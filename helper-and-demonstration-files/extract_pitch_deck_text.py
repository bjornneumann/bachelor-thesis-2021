# This is a helper file that we have created to build our dataset.
# If we have a folder called "pitchdecks" in the same directory as this file
# and then run this script, a csv file with two columns will be created and filled with the names  
# and extracted text information from the pitchdecks.


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

	final_string = re.sub('\S+@\S+', '', final_string)
	final_string = re.sub(r'\b(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)\b', '', final_string)
	final_string = re.sub("\n", " ", final_string)

	#Custom Issues
	final_string = re.sub('h"ps://-­‐18', " ", final_string)
	final_string = re.sub('h"ps:///', " ", final_string)
	
	return final_string



# Extract text from training data pitch decks and put it in a csv file that will be used for training purposes

with open('extracted_pitch_deck_text.csv', mode='w') as list_file:
	list_writer = csv.writer(list_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)

	for filename in os.listdir('pitchdecks'):

		file_path = 'pitchdecks/' + filename

		list_writer.writerow([filename[:-4].lower(), convert_pdf_to_string(file_path)])		