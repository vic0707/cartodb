# CartoDB Assignment 2

## Setup

In order to run this application please follow the next steps:
- Clone the github repository into your own machine
- Navigate in your terminal to the wwocruity file
- Run 'bundle install'
- Run 'rails db:create' to create the DB
- Run 'rails db:migrate' to launch all the migrations
- Finally run 'rails s' and navigate to http://localhost:3000/ in your browser

There is no need to login.

In the search boxes please use the following options:
- As username use vic0707
- As table use on of the following:
	- asia_adm0
	- oceania_adm0
	- ne_adm0_europe
	- africa_adm0
	- samerica_adm0
	- north_america_adm0

## Decisions

I have decided to take test 2. I feel more confirtable with this type of exercise than maping data into a map. Also I am trying to improve my frontend skills working with js frameworks. After reading the specs I realized that the second exercise would allow me to continue developing my React skills.

I decided to use Rails for the backend and React for the frontend. From my previous experience I believe that React matches well with Rails and allows for great flexibility.

In terms of data, I decided to only use the 6 tables that provide the names of countries in the different continents. I took this decision to try to control the data in order to simplify the views for the user. Since the returned data structures are not aligned, I had to manipulate this data before sending it to the different views. By doing this modification on the controller's side, I was able to reduce the number of views that I had to code, allowing for better reusability later.

I decided to limit the pages to 10 entries to make sure that there are always several pages per continent.

The table showing the countries is developed in React and thus it will not need to refresh the whole page when changing from page to the next.

Looking forward to your feedback.
