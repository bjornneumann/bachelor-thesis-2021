### This is a helper file!
### It demonstrates the copabilities of the Tesseract OCR engine.
### To run this code successfully, the operating system requires Tesseract to be installed.
### When running this code, one can pick a file to be scanned (here it is a file called "pitchdeck.pdf", which should be located in the same directory)
### The OCR output is in a txt file called "out_text_ocr.txt" in the same directory

import cv2 
import pytesseract

from pdf2image import convert_from_path
import os
import sys

import time

start = time.time()
print("Started script ...")


### 1st STEP

# Path of the pdf
PDF_file = "pitchdeck.pdf"

# Store all the pages of the PDF in a variable
pages = convert_from_path(PDF_file, 500)


end = time.time()
print("Script execution time (convert_from_path function):", end - start)

# Counter to store images of each page of PDF to image
image_counter = 1

# Iterate through all the pages stored above
for page in pages:

	# Declaring filename for each page of PDF as JPG
	# For each page, filename will be:
	# PDF page 1 -> page_1.jpg
	# PDF page 2 -> page_2.jpg
	# PDF page 3 -> page_3.jpg
	# ....
	# PDF page n -> page_n.jpg
	filename = "ocr_images/page_"+str(image_counter)+".jpg"
	
	# Save the image of the page in system
	page.save(filename, 'JPEG')

	# Increment the counter to update filename
	image_counter = image_counter + 1

end = time.time()
print("Script execution time (saving the image files locally):", end - start)

# Variable to get count of total number of pages
filelimit = image_counter-1

# Creating a text file to write the output
outfile = "out_text_ocr.txt"

# Open the file in append mode so that
# All contents of all images are added to the same file
f = open(outfile, "a")


### 2nd STEP

# Iterate from 1 to total number of pages
for i in range(1, filelimit + 1):

	print('Processing page', i, "of", filelimit)

	# Set filename to recognize text from
	# Again, these files will be:
	# page_1.jpg
	# page_2.jpg
	# ....
	# page_n.jpg
	filename = "ocr_images/page_"+str(i)+".jpg"

	# Adding custom options
	img = cv2.imread(filename)
	custom_config = r'--oem 3 --psm 6'
	text = pytesseract.image_to_string(img, config=custom_config)


	# The recognized text is stored in variable text
	# Any string processing may be applied on text
	# Here, basic formatting has been done:
	# In many PDFs, at line ending, if a word can't
	# be written fully, a 'hyphen' is added.
	# The rest of the word is written in the next line
	# Eg: This is a sample text this word here GeeksF-
	# orGeeks is half on first line, remaining on next.
	# To remove this, we replace every '-\n' to ''.
	text = text.replace('-\n', '')	
	# Finally, write the processed text to the file.
	f.write(text)


end = time.time()
print("Total script execution time:", end - start)

# Close the file after writing all the text.
f.close()








#### The following code was used for grayscaling, 
#### removing noise and thresholding with the hope of improving the OCR performance
#### However, in our case, it did not seem to work well. Thus, we commented this code portion out


#img = cv2.imread('image.jpg')


# get grayscale image
#def get_grayscale(image):
#    return cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# noise removal
#def remove_noise(image):
#    return cv2.medianBlur(image,5)
 
#thresholding
#def thresholding(image):
#    return cv2.threshold(image, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)[1]


#img = get_grayscale(img)
#img = thresholding(img)
#img = remove_noise(img)


# Adding custom options
#custom_config = r'--oem 3 --psm 6'
#text = pytesseract.image_to_string(img, config=custom_config)

#print(text)