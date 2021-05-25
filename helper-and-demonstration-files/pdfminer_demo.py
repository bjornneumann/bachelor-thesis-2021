### This is a helper file!
### It demonstrates the copabilities of the PDFMiner package.
### When running this code, one can pick a file to be scanned (here it is a file called "pitchdeck.pdf", which should be located in the same directory)
### The output is in a txt file called "out_text_pdfminer.txt" in the same directory

from io import StringIO

from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfdocument import PDFDocument
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.pdfpage import PDFPage
from pdfminer.pdfparser import PDFParser


import os
import csv
import re

import time

start = time.time()
print("Started script ...")


def convert_pdf_to_string(file_path):

	output_string = StringIO()
	with open(file_path, 'rb') as in_file:
	    parser = PDFParser(in_file)
	    doc = PDFDocument(parser)
	    rsrcmgr = PDFResourceManager()
	    device = TextConverter(rsrcmgr, output_string, laparams=LAParams())
	    interpreter = PDFPageInterpreter(rsrcmgr, device)
	    for page in PDFPage.create_pages(doc):
	        interpreter.process_page(page)


	final_string = output_string.getvalue()
	
	return final_string



# Extract text from training data pitch decks and put it in a csv file that will be used for training purposes

# Path of the pdf
PDF_file = "pitchdeck.pdf"

text = convert_pdf_to_string(PDF_file)
outfile = "out_text_pdfminer.txt"

# Open the file in append mode so that
# All contents of all images are added to the same file
f = open(outfile, "a")
f.write(text)

end = time.time()
print("Script execution time:", end - start)

f.close()
		