from bottle import get, post, template, route, run, request, response, redirect
import bottle
import httplib2
import bottle
from beaker.middleware import SessionMiddleware
import beaker
import collections
import anydbm

import requests
from sumy.parsers.html import HtmlParser
from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.nlp.stemmers import Stemmer
from sumy.utils import get_stop_words
import urllib2
from BeautifulSoup import *
import enchant
from time import clock
from fuzzywuzzy import fuzz

tpl_path = "~/Mini-Search_Engine/"

# set up beaker-bottle session
session_opts = {
    'session.type': 'file',
    'session.data_dir': './data',
    'session.auto': True
}
app = SessionMiddleware(bottle.app(), session_opts)

access_token = None
next_url_list=[]


summaries = anydbm.open('url_summary', 'c')
titles = anydbm.open('url_title', 'c')

words = anydbm.open('word_list', 'c')
numResults = 0
duration = 0
max_ratio = 0
sug_word = None

# count number of words in the query
def countWords(sentence):
    # order the counts in the order the words were first seen
    counts = collections.OrderedDict()
    
    # ignore the white spaces in the sentence
    sentence = sentence.split()
    if len(sentence)==0:
        first_word=None
    else:
        if len(sentence)>=3:
            first_word = sentence[0:3]
        else :
	    first_word = sentence
    for word in sentence:
        # check if the word has already appeared in query
        if word.lower() in counts:
            # add 1 to the lowercased word
            counts[word.lower()] += 1
        else:
            # set the count of the lowercased word to 1
            counts[word.lower()] = 1
    return counts, first_word

@get('/')
def hello():
    index='a'
    keywords = []
    d = enchant.Dict("en_US")
    for word in words.keys():
        word=str(word)
        first_char=word.lower()[0]
        if first_char.isalpha() and first_char == index and d.check(word):
            keywords.append(word)
            index = chr(ord(index) + 3)

    return template(tpl_path+'anonymous_mode',keywords=keywords)

@post('/query')
def query():
    # calculate duration and number of results in global variable
    global duration
    global numResults
    start = clock()
    
    # get sentence from query
    sentence = request.forms.get('keywords')
    keywords = []
    
    # get counts of each word by calling countWords function and first word
    counts, first_word = countWords(sentence)
    index='a'
    d = enchant.Dict("en_US")
    for word in words.keys():
        word=str(word)
	first_char=word.lower()[0]
    
    # only store word in suggestion if first character is an alphabet
	if first_char.isalpha() and first_char == index and d.check(word):
	    keywords.append(word)
            index = chr(ord(index) + 2)



    if first_word==None:
        return template(tpl_path+'anonymous_mode',keywords=keywords)


    check_if_words_are_in_database = []

    # check if word is a word in database
 #   for single_word in first_word:
#	if single_word in words:
#	    check_if_words_are_in_database.append(single_word)

    global max_ratio
    global sug_word
    for single_word in first_word:
        if single_word in words:
            max_ratio = 100
        for word in words.keys():
            ratio = fuzz.ratio(single_word,word)
            if (ratio>max_ratio):
                max_ratio = ratio
                sug_word = word
           
            if ratio >=80:
	        check_if_words_are_in_database.append(word)


    # if word not found, return not found
    if len(check_if_words_are_in_database) == 0:	
        return template(tpl_path+'result_not_found',counts=counts,keywords=keywords,sentence=sentence,first_word= sentence+ " Not Found")        

    # get database 
    rank = anydbm.open('rank', 'c')
    doc = anydbm.open('inverted_index','c')
    url = anydbm.open('doc_list','c')
    global next_url_list
    next_url_list=[]
    url_list=[]

    # check if word in database before adding in url_list
    for single_word in check_if_words_are_in_database:    
        for doc_id in rank.keys():        
	    if doc_id in doc[words[single_word]]:
	        if url[doc_id] not in url_list:
		    url_list.append(url[doc_id])

    numResults = len(url_list)

    # get the first five results if more than five results
    if len(url_list)>=5:
        next_url_list=url_list[5:]
        url_list=url_list[0:5]
    duration = clock() - start
    return template(tpl_path+'result',counts=counts,max_ratio=max_ratio,sug_word=sug_word, sentence=sentence,keywords=keywords,first_word=first_word,urls=url_list, summaries=summaries,titles=titles,duration=duration,numResults=numResults)

@post('/Next')
def Next_page():
    index='a'
    keywords = []
    d = enchant.Dict("en_US")
    for word in words.keys():
        word=str(word)
	first_char=word.lower()[0]		

    # check if first letter in word suggestions is an alphabet	
	if first_char.isalpha() and first_char == index and d.check(word):
	    keywords.append(word)
            index = chr(ord(index) + 2)

    global next_url_list

    # get next set of 5 urls
    if len(next_url_list)>=5:
        url_list=next_url_list[0:5]
	next_url_list=next_url_list[5:]

    # if no more results
    elif len(next_url_list)==0:
	return template(tpl_path+'no_more_result',keywords=keywords)
    else:
    
	url_list=next_url_list
	next_url_list=[]
    return template(tpl_path+'result',urls=url_list,summaries=summaries,max_ratio=max_ratio,sug_word=sug_word,keywords=keywords,titles=titles,duration=duration,
                    numResults=numResults)


#run(app=app, host='localhost', port=8080, debug=True)
run(app=app, host='0.0.0.0', port='80',debug=True)
