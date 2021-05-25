/* Copyright (C) 2021 Björn Leon Neumann 
 * This software has been created as part of my bachelor thesis
 * "Evaluation of startup pitch decks using machine learning and natural language processing"
 * at the University of St. Gallen under the supervision of Prof. Dr. Ivo Blohm
 */

import React from 'react';
import ReactDOM from 'react-dom';
import Button from '@material-ui/core/Button';
import './index.css'

import Container from '@material-ui/core/Container';
import Paper from '@material-ui/core/Paper';
import Typography from '@material-ui/core/Typography';
import BackupOutlinedIcon from '@material-ui/icons/BackupOutlined';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import LinearProgress from '@material-ui/core/LinearProgress';

import Accordion from '@material-ui/core/Accordion';
import AccordionSummary from '@material-ui/core/AccordionSummary';
import AccordionDetails from '@material-ui/core/AccordionDetails';
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';

import InputLabel from '@material-ui/core/InputLabel';
import MenuItem from '@material-ui/core/MenuItem';
import FormControl from '@material-ui/core/FormControl';
import Select from '@material-ui/core/Select';
import Grid from '@material-ui/core/Grid';

import CircularProgress from '@material-ui/core/CircularProgress';

import TrafficLight from 'react-trafficlight';
// Initially we used the MultiColorProgressbar package 
// from https://www.npmjs.com/package/multi-color-progressbar-with-indicator
// However, it had some issues with state updates as it was not properly programmed.
// Thus, we switched to the TrafficLight package instead.





function Result(props) {


  let wrapper = {
    padding: '30px'
  }

  let result = props.result;


  if ((result * 100) >= 60) {
    return <div> 

             <p style={{textAlign: 'center'}}>The result looks very good 🙂 </p>
             <p style={{textAlign: 'center', color: '#27ae60', fontFamily: 'Work Sans', fontSize: '40px', margin: '0 auto'}}>{Math.round(result * 10000) / 100}</p>
             <div style={{width: '80%', margin: '0 auto'}}>
                <div style={wrapper}>
                  <TrafficLight style={{display: 'block', margin: '0 auto'}} GreenOn Horizontal/>
                </div>
             </div>
             
           </div>;
  } else if ((result * 100) > 40) {
    return <div> 

             <p style={{textAlign: 'center'}}>It is hard for us to decide whether this pitch deck is good or bad. We recommend to have a manual look at it. </p>
             <p style={{textAlign: 'center', color: "#f39c12", fontFamily: 'Work Sans', fontSize: '40px', margin: '0 auto'}}>{Math.round(result * 10000) / 100}</p>
             <div style={{width: '80%', margin: '0 auto'}}>
                <div style={wrapper}>
                  <TrafficLight style={{display: 'block', margin: '0 auto'}} YellowOn Horizontal/>              
                </div>
             </div>
             
           </div>;
  } else {
    return <div> 

             <p style={{textAlign: 'center'}}>The result looks pretty bad 🙁 </p>
             <p style={{textAlign: 'center', color: "#c0392b", fontFamily: 'Work Sans', fontSize: '40px', margin: '0 auto'}}>{Math.round(result * 10000) / 100}</p>
             <div style={{width: '80%', margin: '0 auto'}}>
                <div style={wrapper}>
                  <TrafficLight style={{display: 'block', margin: '0 auto'}} RedOn Horizontal/>               
                </div>
             </div>
             
           </div>;
  }
}





class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      isLoaded: true,
      items: [],
      uploadLoading: false,
      uploadResult: false,
      fileText: '',
      main_industry: '',
      number_of_founders: '',
      location: '',
      infoLoading: false,
      infoResult: false,
      infoPredictionValue: null,
      predictionValue: null,
      updatedPredictionValue: null
    };
  }


  onClickHandler(event) {
    this.setState({
      error: null,
      isLoaded: true,
      items: [],
      uploadLoading: false,
      uploadResult: false,
      fileText: ''
    });
  }


  handleChange(event) {
        const target = event.target;
        const value = target.value;
        const name = target.name;

        this.setState({
            [name]: value
        });
  }

  onChangeHandler(event) {

    this.setState({
      uploadLoading: true
    });

    const formData = new FormData()
    formData.append('file', event.target.files[0])

    fetch('http://localhost:5000/api/upload', { // Your POST endpoint
      method: 'POST',
      body: formData // This is your file object
    }).then(res => res.json())
      .then(response => {
        this.setState({
          uploadLoading: false,
          uploadResult: true,
          predictionValue: response.prediction,
          fileText: response.text
        });
      });

  }

  onAdditionalClickHandler(event) {
    this.setState({
      infoLoading: true
    });

    fetch('http://localhost:5000/api/info', { // Your POST endpoint
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        main_industry: this.state.main_industry,
        number_of_founders: this.state.number_of_founders,
        location: this.state.location
      }) // This is your file object
    }).then(res => res.json())
      .then(response => {
        if (!response.error) {
          this.setState({
            infoLoading: false,
            infoResult: true,
            infoPredictionValue: response.prediction,
            updatedPredictionValue: 0.25 * response.prediction + 0.75 * this.state.predictionValue
          });
        } else {
          alert('Please pick values for all three additional variables. If none of the displayed options fits your case, select \'Other\' at the very bottom.')
          this.setState({
            infoLoading: false
          });
        }
        
      });
  }

  render() {

    let industryOptions = [
      {label: "Health Care", value: 1},
      {label: "FinTech", value: 2},
      {label: "Financial Services", value: 3},
      {label: "Artificial Intelligence", value: 4},
      {label: "SaaS", value: 5},
      {label: "E-Commerce", value: 6},
      {label: "Machine Learning", value: 7},
      {label: "Apps", value: 8},
      {label: "Wellness", value: 9},
      {label: "Food and Beverage", value: 10},
      {label: "Medical", value: 11},
      {label: "Analytics", value: 12},
      {label: "Mobile Apps", value: 13},
      {label: "Blockchain", value: 14},
      {label: "Payments", value: 15},
      {label: "Real Estate", value: 16},
      {label: "Manufacturing", value: 17},
      {label: "Cyber Security", value: 18},
      {label: "Education", value: 19},
      {label: "Marketplace", value: 20},
      {label: "Retail", value: 21},
      {label: "Big Data", value: 22},
      {label: "E-Learning", value: 23},
      {label: "Media and Entertainment", value: 24},
      {label: "Enterprise Software", value: 25},
      {label: "Gaming", value: 26},
      {label: "Logistics", value: 27},
      {label: "Computer", value: 28},
      {label: "Cryptocurrency", value: 29},
      {label: "Banking", value: 30},
      {label: "B2B", value: 31},
      {label: "Human Resources", value: 32},
      {label: "Marketing", value: 33},
      {label: "Consumer Goods", value: 34},
      {label: "Productivity Tools", value: 35},
      {label: "Fitness", value: 36},
      {label: "Network Security", value: 37},
      {label: "Insurance", value: 38},
      {label: "Pharmaceutical", value: 39},
      {label: "Medical Device", value: 40},
      {label: "Mobile", value: 41}
    ];

    industryOptions.sort((a, b) => (a.label > b.label) ? 1 : -1);

    let locationOptions = [
      {label: "San Francisco, California, United States", value: 1},
      {label: "New York, New York, United States", value: 2},
      {label: "London, England, United Kingdom", value: 3},
      {label: "Los Angeles, California, United States", value: 4},
      {label: "Singapore, Central Region, Singapore", value: 5},
      {label: "Tel Aviv, Tel Aviv, Israel", value: 6},
      {label: "Berlin, Berlin, Germany", value: 7},
      {label: "Seattle, Washington, United States", value: 8},
      {label: "Paris, Ile-de-France, France", value: 9},
      {label: "Boston, Massachusetts, United States", value: 10},
      {label: "Austin, Texas, United States", value: 11},
      {label: "São Paulo, Sao Paulo, Brazil", value: 12},
      {label: "Bengaluru, Karnataka, India", value: 13},
      {label: "Palo Alto, California, United States", value: 14},
      {label: "Tokyo, Tokyo, Japan", value: 15},
      {label: "Brooklyn, New York, United States", value: 16},
      {label: "Chicago, Illinois, United States", value: 17},
      {label: "Bangalore, Karnataka, India", value: 18},
      {label: "Toronto, Ontario, Canada", value: 19},
      {label: "Beijing, Beijing, China", value: 20},
      {label: "Shanghai, Shanghai, China", value: 21},
      {label: "Stockholm, Stockholms Lan, Sweden", value: 22},
      {label: "Mexico City, Distrito Federal, Mexico", value: 23},
      {label: "San Jose, California, United States", value: 24},
      {label: "Mumbai, Maharashtra, India", value: 25},
      {label: "Denver, Colorado, United States", value: 26},
      {label: "Sydney, New South Wales, Australia", value: 27},
      {label: "Washington, District of Columbia, United States", value: 28},
      {label: "Amsterdam, Noord-Holland, The Netherlands", value: 29},
      {label: "Atlanta, Georgia, United States", value: 30},
      {label: "Portland, Oregon, United States", value: 31},
      {label: "Seoul, Seoul-t\'ukpyolsi, South Korea", value: 32},
      {label: "Berkeley, California, United States", value: 33},
      {label: "San Diego, California, United States", value: 34},
      {label: "Gurgaon, Haryana, India", value: 35},
      {label: "Mountain View, California, United States", value: 36},
      {label: "Zürich, Zurich, Switzerland", value: 37},
      {label: "Shenzhen, Guangdong, China", value: 38},
      {label: "San Mateo, California, United States", value: 39},
      {label: "Barcelona, Catalonia, Spain", value: 40},
      {label: "Dubai, Dubai, United Arab Emirates", value: 41}
    ];

    locationOptions.sort((a, b) => (a.label > b.label) ? 1 : -1);

    const {error, isLoaded } = this.state;

    if (error) {
      return <div>Error: {error.message}</div>;
    } else if (!isLoaded) {
      return <div>Loading...</div>;
    } else {
      return (
        <div>

          <AppBar position="static">
            <Toolbar>
              <Typography variant="h6" id="bar_title">
                Pitch Deck Evaluator
              </Typography>
            </Toolbar>
          </AppBar>

          <Container maxWidth="sm">
            <Paper id="upload_area" elevation={3}>

              { this.state.uploadLoading ? <LinearProgress color="secondary" /> : (this.state.uploadResult ? 

                <div>
                  <Result result={this.state.infoResult ? this.state.updatedPredictionValue : this.state.predictionValue}/>

                  <Grid
                    container
                    direction="row"
                    justify="center"
                    alignItems="center"
                  >
                    <Button id="new_upload_button" variant="outlined" component="span" onClick={this.onClickHandler.bind(this)}>
                      Upload new pitch deck
                    </Button>
                  </Grid>

                  <Accordion className="accordion_additional_data">
                    <AccordionSummary
                      expandIcon={<ExpandMoreIcon />}
                      aria-controls="panel1a-content"
                      id="panel1a-header"
                    >
                      <Typography>Add additional data</Typography>
                    </AccordionSummary>
                    <AccordionDetails>
                      <Grid container spacing={3}>
                      <Grid item md={7} xs={12}>
                        <FormControl style={{ minWidth: "100%", marginBottom: "16px" }}>
                              <InputLabel id="number_of_founders-label">Number of founders</InputLabel>
                              <Select
                                labelId="number_of_founders-label"
                                id="number_of_founders"
                                value={this.state.number_of_founders}
                                name="number_of_founders"
                                onChange={this.handleChange.bind(this)}
                              >
                                <MenuItem value={1}>1</MenuItem>
                                <MenuItem value={2}>2</MenuItem>
                                <MenuItem value={3}>3</MenuItem>
                                <MenuItem value={4}>4</MenuItem>  
                                <MenuItem value={5}>5</MenuItem>
                                <MenuItem value={6}>More than 5</MenuItem>                                 
                              </Select>
                        </FormControl>

                        <FormControl style={{ minWidth: "100%", marginBottom: "16px" }}>
                        <InputLabel id="main-industry-simple-select-label">Select your main industry (the most specific one)</InputLabel>
                        <Select
                          labelId="main-industry-simple-select-label"
                          id="main-industry-simple-select"
                          value={this.state.main_industry}
                          name="main_industry"
                          onChange={this.handleChange.bind(this)}
                        > 
                          {industryOptions && industryOptions.length && industryOptions.map((option, i) => {
                              return <MenuItem value={option.value} key={i}>{option.label}</MenuItem>
                          })} 
                          <MenuItem value={42}>Other</MenuItem> 
                        </Select>
                      </FormControl>


                      <FormControl style={{ minWidth: "100%", marginBottom: "16px" }}>
                        <InputLabel id="location-simple-select-label">Select your HQ location</InputLabel>
                        <Select
                          labelId="location-simple-select-label"
                          id="location-simple-select"
                          value={this.state.location}
                          name="location"
                          onChange={this.handleChange.bind(this)}
                        >
                          {locationOptions && locationOptions.length && locationOptions.map((option, i) => {
                              return <MenuItem value={option.value} key={i}>{option.label}</MenuItem>
                          })} 
                          <MenuItem value={42}>Other</MenuItem>  
                        </Select>
                      </FormControl>
                      <Grid
                        container
                        direction="row"
                        justify="center"
                        alignItems="center"
                      >
                        <Button id="additional_rating_button" variant="contained" component="span" onClick={this.onAdditionalClickHandler.bind(this)} disabled={this.state.infoLoading}>
                          { this.state.infoLoading ? <CircularProgress size={24} color="primary"/> : 'Update rating' }
                        </Button>
                      </Grid>
                    </Grid>
                    </Grid>
                    </AccordionDetails>
                  </Accordion>

                </div>

               :

               (<Typography align='center'>
                <BackupOutlinedIcon fontSize="large" style={{opacity: "70%"}} />
                <span style={{display: "block", marginTop: 0, fontSize: "20px", opacity: "70%", marginBottom: '20px'}}>Upload your pitch deck file here</span>
                <input
                  accept="application/pdf"
                  id="pdf-file"
                  type="file"
                  onChange={this.onChangeHandler.bind(this)}
                  style={{display: 'none'}}
                />
                <label htmlFor="pdf-file">
                  <Button id="upload_button" variant="contained" component="span">
                    Browse Files
                  </Button>
                </label>
              </Typography>)

               )

              }

            </Paper>

            <p style={{fontSize: '10px', color: '#ccc', marginTop: '60px'}}>The maximum possible result of the value that is calculated is 100. The minimum value is 0. For values between 60 and 100, the startup is classified as good, and thus the green light will be on. For values between 0 and 40, the startup is classified as bad and the red light turns on. For values between the values of 40 and 60 (not including the edge cases), the startup cannot be classified with enough certainty, and thus the yellow light turns on.</p>
            <p style={{fontSize: '12px', color: '#bbb', marginTop: '30px', textAlign: 'center'}}>Copyright © 2021 Björn Leon Neumann</p>
          </Container>


        </div>
      );
    }
  }
}


ReactDOM.render(
  <App/>,
  document.getElementById('root')
);