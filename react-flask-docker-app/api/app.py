### Copyright (C) 2021 Björn Leon Neumann 
### This software has been created as part of my bachelor thesis
### "Evaluation of startup pitch decks using machine learning and natural language processing"
### at the University of St. Gallen under the supervision of Prof. Dr. Ivo Blohm



from flask import Flask, request, jsonify, make_response
from flask_cors import CORS, cross_origin
from werkzeug.utils import secure_filename

import os
import re
import string
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.layers.experimental.preprocessing import TextVectorization


from io import StringIO
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfdocument import PDFDocument
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.pdfpage import PDFPage
from pdfminer.pdfparser import PDFParser

import json
import time


# This function is used for converting a pdf file to text.
# Due to efficiency reasons, we neglected to include the Tesseract OCR functionality.

# However, the Tesseract OCR functionality can still be tested from the terminal by running "python3 ocr_demo.py". 
# In the file "python3 ocr_demo.py", the path can be changed to the respective PDF file that should be fed into the OCR engine.
# Currently, the path is set to "pitchdeck.pdf", which is a sample pitchdeck that can be used to check the functionality.
# Please keep in mind that the Tesseract OCR engine has to be installed on the operating system that tries to run the OCR engine.

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

    # To further clean our data, we remove strings that look like emails by using regular expressions
    final_string = re.sub('\S+@\S+', '', final_string)
    # Furthermore, we remove strings that look like URLs or internet addresses in general by using regular expressions
    final_string = re.sub(r'\b(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)\b', '', final_string)
    # Also, we replace new line characters by spaces
    final_string = re.sub("\n", " ", final_string)
    
    return final_string



def custom_standardization(input_data):
  lowercase = tf.strings.lower(input_data)
  stripped_html = tf.strings.regex_replace(lowercase, '<br />', ' ')
  return tf.strings.regex_replace(stripped_html,
                                  '[%s]' % re.escape(string.punctuation),
                                  '')

UPLOAD_FOLDER = 'uploads'
ALLOWED_EXTENSIONS = {'pdf'}

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS






app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
CORS(app)




# This route is called when a new pitch deck is uploaded

@app.route('/api/upload', methods=['POST'])
def upload_file():

    file = request.files['file']
    # if user does not select file, browser also
    # submit an empty part without filename
    if file.filename == '':
        json_response = {
            "error": "No selected file"
        }
    if file and allowed_file(file.filename):
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        file_text = convert_pdf_to_string(os.path.join(app.config['UPLOAD_FOLDER'], filename))

        ### HERE we could now check if the file_text is empty. If it is, we are likely dealing with an image-based PDF file.
        ### Thus, the tesseract functionality may be implemented here!
        ### To see how to call Tesseract, check out the file "ocr_demo.py"

        # It can be used to reconstruct the model identically.
        reconstructed_model = keras.models.load_model("my_model", custom_objects={'TextVectorization':TextVectorization, 'custom_standardization':custom_standardization})
        prediction_result = reconstructed_model.predict([file_text])

        json_response = {
            "text": file_text,
            "prediction": prediction_result.tolist()[0][0]
        }

    response = make_response(jsonify(json_response))
    return response





# This route is for the updating mechanism of the prediction value

@app.route('/api/info', methods=['POST'])
def additional_info():

    data = json.loads(request.data) 

    if data['location'] and data['number_of_founders'] and data['main_industry']:

        location_minimum = 0
        industry_minimum = 6.3
        founders_minimum = 15.8
        location_maximum = 40
        industry_maximum = 41.9
        founders_maximum = 37.9

        # Initialize all dummy variables with 0
        city = [0]*40
        industry = [0]*40
        founders = [0]*4


        # if user selects "other" for all three variables
        if data['location'] == 42 and data['main_industry'] == 42 and data['number_of_founders'] == 6:
            normalized_result = null

        # if user selects "other" for location and industry
        if data['location'] == 42 and data['main_industry'] == 42 and data['number_of_founders'] != 6:

            # Check if it is not the last value
            # If it is the last value, then let all variable be equal to 0
            if data['number_of_founders'] != 5:
                founders[data['number_of_founders']-1] = 1
            
            founders_percentage = 37.9 -22.1 * founders[1-1] -21.7 * founders[2-1] -19.4 * founders[3-1] -15.3 * founders[4-1]
            
            minimum_value = founders_minimum
            maximum_value = founders_maximum

            sum_of_percentages = founders_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value

        # if user selects "other" for location and number of founders
        if data['location'] == 42 and data['main_industry'] != 42 and data['number_of_founders'] == 6:

            if data['main_industry'] != 41:
                industry[data['main_industry']-1] = 1

            industry_percentage = 26.7 -5.9 * industry[1-1] -7.1 * industry[2-1] -2.7 * industry[3-1] -15.3 * industry[4-1] -20.4 * industry[5-1] -7.9 * industry[6-1] -16.5 * industry[7-1] -4.3 * industry[8-1] -10.5 * industry[9-1] -3.1 * industry[10-1] + 1.2 * industry[11-1] -7 * industry[12-1] -5 * industry[13-1] -15 * industry[14-1] + 0.4 * industry[15-1] -9.5 * industry[16-1] -7.1 * industry[17-1] -4.9 * industry[18-1] -18.9 * industry[19-1] -16.7 * industry[20-1] -5.4 * industry[21-1] -13.9 * industry[22-1] -17.4 * industry[23-1] -12.7 * industry[24-1] -9.6 * industry[25-1] -16.7 * industry[26-1] -13.9 * industry[27-1] + 1.5 * industry[28-1] -8.3 * industry[29-1] + 3 * industry[30-1] -13.2 * industry[31-1] -12.4 * industry[32-1] -8.5 * industry[33-1] -17.6 * industry[34-1] -7.9 * industry[35-1] -11.1 * industry[36-1] -4.1 * industry[37-1] + 5.6 * industry[38-1] + 15.2 * industry[39-1] -20 * industry[40-1]
            
            minimum_value = industry_minimum
            maximum_value = industry_maximum

            sum_of_percentages = industry_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value

        # if user selects "other" for industry and number of founders
        if data['location'] != 42 and data['main_industry'] == 42 and data['number_of_founders'] == 6:

            if data['location'] != 41:
                city[data['location']-1] = 1

            location_percentage = 20 + 0.2 * city[1-1] + 0.3 * city[2-1] + 0.2 * city[3-1] -7.9 * city[4-1] -12 * city[5-1] -4.4 * city[6-1] + 3.7 * city[7-1] -14.7 * city[8-1] + 2.2 * city[9-1] -7.1 * city[10-1] -16.6 * city[11-1] -8.5 * city[12-1] -7.5 * city[13-1] + 19.1 * city[14-1] -15.5 * city[15-1] -15 * city[16-1] + 1.1 * city[17-1] + 2.2 * city[18-1] -3.3 * city[19-1] + 9.4 * city[20-1] + 5 * city[21-1] -20 * city[22-1] + 20 * city[23-1] -13.3 * city[24-1] -6.7 * city[25-1] -0 * city[26-1] + 1.4 * city[27-1] + 3.1 * city[28-1] + 5 * city[29-1] + 13.3 * city[30-1] -11.7 * city[31-1] + 7.3 * city[32-1] -10.9 * city[33-1] + 7.3 * city[34-1] -1.8 * city[35-1] -1.8 * city[36-1] -10.9 * city[37-1] + 10 * city[38-1] -10 * city[39-1] -10 * city[40-1]
            
            minimum_value = location_minimum
            maximum_value = location_maximum

            sum_of_percentages = location_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value

        # if user selects "other" for location only
        if data['location'] == 42 and data['main_industry'] != 42 and data['number_of_founders'] != 6:

            if data['main_industry'] != 41:
                industry[data['main_industry']-1] = 1
            if data['number_of_founders'] != 5:
                founders[data['number_of_founders']-1] = 1

            industry_percentage = 26.7 -5.9 * industry[1-1] -7.1 * industry[2-1] -2.7 * industry[3-1] -15.3 * industry[4-1] -20.4 * industry[5-1] -7.9 * industry[6-1] -16.5 * industry[7-1] -4.3 * industry[8-1] -10.5 * industry[9-1] -3.1 * industry[10-1] + 1.2 * industry[11-1] -7 * industry[12-1] -5 * industry[13-1] -15 * industry[14-1] + 0.4 * industry[15-1] -9.5 * industry[16-1] -7.1 * industry[17-1] -4.9 * industry[18-1] -18.9 * industry[19-1] -16.7 * industry[20-1] -5.4 * industry[21-1] -13.9 * industry[22-1] -17.4 * industry[23-1] -12.7 * industry[24-1] -9.6 * industry[25-1] -16.7 * industry[26-1] -13.9 * industry[27-1] + 1.5 * industry[28-1] -8.3 * industry[29-1] + 3 * industry[30-1] -13.2 * industry[31-1] -12.4 * industry[32-1] -8.5 * industry[33-1] -17.6 * industry[34-1] -7.9 * industry[35-1] -11.1 * industry[36-1] -4.1 * industry[37-1] + 5.6 * industry[38-1] + 15.2 * industry[39-1] -20 * industry[40-1]
            founders_percentage = 37.9 -22.1 * founders[1-1] -21.7 * founders[2-1] -19.4 * founders[3-1] -15.3 * founders[4-1]
            
            minimum_value = industry_minimum + founders_minimum
            maximum_value = industry_maximum + founders_maximum

            sum_of_percentages = industry_percentage + founders_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value

        # if user selects "other" for industry only
        if data['location'] != 42 and data['main_industry'] == 42 and data['number_of_founders'] != 6:

            if data['location'] != 41:
                city[data['location']-1] = 1
            if data['number_of_founders'] != 5:
                founders[data['number_of_founders']-1] = 1

            location_percentage = 20 + 0.2 * city[1-1] + 0.3 * city[2-1] + 0.2 * city[3-1] -7.9 * city[4-1] -12 * city[5-1] -4.4 * city[6-1] + 3.7 * city[7-1] -14.7 * city[8-1] + 2.2 * city[9-1] -7.1 * city[10-1] -16.6 * city[11-1] -8.5 * city[12-1] -7.5 * city[13-1] + 19.1 * city[14-1] -15.5 * city[15-1] -15 * city[16-1] + 1.1 * city[17-1] + 2.2 * city[18-1] -3.3 * city[19-1] + 9.4 * city[20-1] + 5 * city[21-1] -20 * city[22-1] + 20 * city[23-1] -13.3 * city[24-1] -6.7 * city[25-1] -0 * city[26-1] + 1.4 * city[27-1] + 3.1 * city[28-1] + 5 * city[29-1] + 13.3 * city[30-1] -11.7 * city[31-1] + 7.3 * city[32-1] -10.9 * city[33-1] + 7.3 * city[34-1] -1.8 * city[35-1] -1.8 * city[36-1] -10.9 * city[37-1] + 10 * city[38-1] -10 * city[39-1] -10 * city[40-1]
            founders_percentage = 37.9 -22.1 * founders[1-1] -21.7 * founders[2-1] -19.4 * founders[3-1] -15.3 * founders[4-1]
            
            minimum_value = location_minimum + founders_minimum
            maximum_value = location_maximum + founders_maximum

            sum_of_percentages = location_percentage + founders_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value

        # if user selects "other" for number of founders only
        if data['location'] != 42 and data['main_industry'] != 42 and data['number_of_founders'] == 6:

            if data['location'] != 41:
                city[data['location']-1] = 1
            if data['main_industry'] != 41:
                industry[data['main_industry']-1] = 1

            location_percentage = 20 + 0.2 * city[1-1] + 0.3 * city[2-1] + 0.2 * city[3-1] -7.9 * city[4-1] -12 * city[5-1] -4.4 * city[6-1] + 3.7 * city[7-1] -14.7 * city[8-1] + 2.2 * city[9-1] -7.1 * city[10-1] -16.6 * city[11-1] -8.5 * city[12-1] -7.5 * city[13-1] + 19.1 * city[14-1] -15.5 * city[15-1] -15 * city[16-1] + 1.1 * city[17-1] + 2.2 * city[18-1] -3.3 * city[19-1] + 9.4 * city[20-1] + 5 * city[21-1] -20 * city[22-1] + 20 * city[23-1] -13.3 * city[24-1] -6.7 * city[25-1] -0 * city[26-1] + 1.4 * city[27-1] + 3.1 * city[28-1] + 5 * city[29-1] + 13.3 * city[30-1] -11.7 * city[31-1] + 7.3 * city[32-1] -10.9 * city[33-1] + 7.3 * city[34-1] -1.8 * city[35-1] -1.8 * city[36-1] -10.9 * city[37-1] + 10 * city[38-1] -10 * city[39-1] -10 * city[40-1]
            industry_percentage = 26.7 -5.9 * industry[1-1] -7.1 * industry[2-1] -2.7 * industry[3-1] -15.3 * industry[4-1] -20.4 * industry[5-1] -7.9 * industry[6-1] -16.5 * industry[7-1] -4.3 * industry[8-1] -10.5 * industry[9-1] -3.1 * industry[10-1] + 1.2 * industry[11-1] -7 * industry[12-1] -5 * industry[13-1] -15 * industry[14-1] + 0.4 * industry[15-1] -9.5 * industry[16-1] -7.1 * industry[17-1] -4.9 * industry[18-1] -18.9 * industry[19-1] -16.7 * industry[20-1] -5.4 * industry[21-1] -13.9 * industry[22-1] -17.4 * industry[23-1] -12.7 * industry[24-1] -9.6 * industry[25-1] -16.7 * industry[26-1] -13.9 * industry[27-1] + 1.5 * industry[28-1] -8.3 * industry[29-1] + 3 * industry[30-1] -13.2 * industry[31-1] -12.4 * industry[32-1] -8.5 * industry[33-1] -17.6 * industry[34-1] -7.9 * industry[35-1] -11.1 * industry[36-1] -4.1 * industry[37-1] + 5.6 * industry[38-1] + 15.2 * industry[39-1] -20 * industry[40-1]
            
            minimum_value = location_minimum + industry_minimum
            maximum_value = location_maximum + industry_maximum

            sum_of_percentages = location_percentage + industry_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value

        # if user selects values for all variables
        if data['location'] != 42 and data['main_industry'] != 42 and data['number_of_founders'] != 6:
            
            if data['location'] != 41:
                city[data['location']-1] = 1
            if data['main_industry'] != 41:
                industry[data['main_industry']-1] = 1
            if data['number_of_founders'] != 5:
                founders[data['number_of_founders']-1] = 1

            location_percentage = 20 + 0.2 * city[1-1] + 0.3 * city[2-1] + 0.2 * city[3-1] -7.9 * city[4-1] -12 * city[5-1] -4.4 * city[6-1] + 3.7 * city[7-1] -14.7 * city[8-1] + 2.2 * city[9-1] -7.1 * city[10-1] -16.6 * city[11-1] -8.5 * city[12-1] -7.5 * city[13-1] + 19.1 * city[14-1] -15.5 * city[15-1] -15 * city[16-1] + 1.1 * city[17-1] + 2.2 * city[18-1] -3.3 * city[19-1] + 9.4 * city[20-1] + 5 * city[21-1] -20 * city[22-1] + 20 * city[23-1] -13.3 * city[24-1] -6.7 * city[25-1] -0 * city[26-1] + 1.4 * city[27-1] + 3.1 * city[28-1] + 5 * city[29-1] + 13.3 * city[30-1] -11.7 * city[31-1] + 7.3 * city[32-1] -10.9 * city[33-1] + 7.3 * city[34-1] -1.8 * city[35-1] -1.8 * city[36-1] -10.9 * city[37-1] + 10 * city[38-1] -10 * city[39-1] -10 * city[40-1]
            industry_percentage = 26.7 -5.9 * industry[1-1] -7.1 * industry[2-1] -2.7 * industry[3-1] -15.3 * industry[4-1] -20.4 * industry[5-1] -7.9 * industry[6-1] -16.5 * industry[7-1] -4.3 * industry[8-1] -10.5 * industry[9-1] -3.1 * industry[10-1] + 1.2 * industry[11-1] -7 * industry[12-1] -5 * industry[13-1] -15 * industry[14-1] + 0.4 * industry[15-1] -9.5 * industry[16-1] -7.1 * industry[17-1] -4.9 * industry[18-1] -18.9 * industry[19-1] -16.7 * industry[20-1] -5.4 * industry[21-1] -13.9 * industry[22-1] -17.4 * industry[23-1] -12.7 * industry[24-1] -9.6 * industry[25-1] -16.7 * industry[26-1] -13.9 * industry[27-1] + 1.5 * industry[28-1] -8.3 * industry[29-1] + 3 * industry[30-1] -13.2 * industry[31-1] -12.4 * industry[32-1] -8.5 * industry[33-1] -17.6 * industry[34-1] -7.9 * industry[35-1] -11.1 * industry[36-1] -4.1 * industry[37-1] + 5.6 * industry[38-1] + 15.2 * industry[39-1] -20 * industry[40-1]
            founders_percentage = 37.9 -22.1 * founders[1-1] -21.7 * founders[2-1] -19.4 * founders[3-1] -15.3 * founders[4-1]
            
            minimum_value = 22.1
            maximum_value = 97.7

            sum_of_percentages = location_percentage + industry_percentage + founders_percentage
            sum_of_percentages_minus_minimum = sum_of_percentages - minimum_value

            normalized_result = sum_of_percentages_minus_minimum / maximum_value


        prediction_result = normalized_result

        json_response = {
            "prediction": prediction_result,
            "data": data
        }    

    else:
        json_response = {
            "error": "Data received not sufficient"
        }

    time.sleep(1)

    response = make_response(jsonify(json_response))
    return response



