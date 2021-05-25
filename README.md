# Bachelor Thesis 2021 - Evaluation of startup pitch decks using machine learning and natural language processing

## Overview
The files contained in this repository have been used to create the
software application that is located in the "react-flask-docker-app" folder.
The "react-flask-docker-app" folder contains an environment for a web application
running a [React](https://reactjs.org/) front-end and 
[Flask](http://flask.pocoo.org/) API back-end. The 
front-end connects to the back-end by making HTTP requests for
desired data. React and Flask are containerized and managed with 
[Docker Compose](https://docs.docker.com/compose/).


## How to use with Docker
Firstly, download [Docker desktop](https://www.docker.com/products/docker-desktop) and follow its
 instructions to install it. This allows us to start using Docker containers.
 
Create a local copy of the "react-flask-docker-app" folder in this repository and run

	docker-compose build
    
This spins up Compose and builds a local development environment according to 
our specifications in [docker-compose.yml](docker-compose.yml). Keep in mind that 
this file contains settings for *development*, and not *production*.

After the containers have been built (this may take a few minutes), run

    docker-compose up
    
This one command boots up a local server for Flask (on port 5000)
and React (on port 3000). Head over to

    http://localhost:3000/ 
    
to view and use the pitch deck evaluation the software. 
When a pitch deck is upload, an API call will be send
to our Flask server to the following end point

    http://localhost:5000/api/upload
    
The front-end logic for consuming our API is contained 
in [client/src/index.js](client/src/index.js). The code 
contained within these files enabled the client to
interact with the back-end API.

Finally, to gracefully stop running our local servers, you can run
 
    docker-compose down

in a separate terminal window or press __control + C__.




## License
This software has been created by Björn Leon Neumann for his bachelor thesis at the University of St. Gallen.


