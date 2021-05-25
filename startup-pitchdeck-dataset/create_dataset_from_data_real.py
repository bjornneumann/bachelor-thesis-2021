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


with open('final_startup_dataset.csv') as csv_file:
	csv_reader = csv.reader(csv_file, delimiter=',')
	line_count = 0
	for row in csv_reader:
		save_path = f"startup_dataset/{row[4]}/{row[3]}"
		file_name = row[0] + ".txt"
		completeName = os.path.join(save_path, file_name)
		file1 = open(completeName, "w")
		file1.write(row[1])
		file1.close()
		line_count += 1
	print(f'Processed {line_count} lines.')	
