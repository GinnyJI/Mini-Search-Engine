import anydbm
import crawler
import pagerank
import requests
from sumy.parsers.html import HtmlParser
from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer as Summarizer
from sumy.nlp.stemmers import Stemmer
from sumy.utils import get_stop_words
from lxml.html import fromstring
from BeautifulSoup import *
import urllib2


if __name__ == "__main__":
	#now we have all urls from the txt
	crawl_web = crawler.crawler(None, 'urls.txt')

	# store list of words (word => word id)
	db = anydbm.open('word_list', 'c')
	for word in crawl_web._word_id_cache:
		db[str(word)] = str(crawl_web._word_id_cache[word])
	db.close()

	# store rank
	rank = pagerank.page_rank(crawl_web.print_list())
	db = anydbm.open('rank', 'c')
	for item in rank:
		db[str(item[0])] = str(item[1])
	db.close()

	# store list of documents (doc id => url)
	db = anydbm.open('doc_list', 'c')
	for doc_id in crawl_web.doc_id_url:
		db[str(doc_id)] = str(crawl_web.doc_id_url[doc_id])

	db.close()

	# store inverted index (word id => corresponding doc id)
	db = anydbm.open('inverted_index', 'c')
	for word_id in crawl_web.inverted_index:
		db[str(word_id)] = str(crawl_web.inverted_index[word_id])
	db.close()

	# store resolved inverted index (word => corresponding url)
	db = anydbm.open('resolved_inverted_index', 'c')
	for word in crawl_web.resolved_inverted_index:
		db[str(word)] = str(crawl_web.resolved_inverted_index[word])
	db.close()

	# store summaries of urls
	db = anydbm.open('url_summary', 'c')
	for doc_id in crawl_web.doc_id_url:
		if doc_id < 40:
		    s = requests.Session()
		    response = s.get(crawl_web.doc_id_url[doc_id])
		    if response.status_code != 404 and response.status_code != 400:
		        parser = HtmlParser.from_url(crawl_web.doc_id_url[doc_id], Tokenizer("english"))
		        stemmer = Stemmer("english")
		        summarizer = Summarizer(stemmer)
		        summarizer.stop_words = get_stop_words("english")
		        
		        text = ""
		        for sentence in summarizer(parser.document, 3):
		            text = text + str(sentence) + " "
		        
		        db[str(crawl_web.doc_id_url[doc_id])] = str(text)
		else:
			break


	db.close()
