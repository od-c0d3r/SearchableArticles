# SearchableArticles

> Rails app to search articles and show results on real-time using `elasticsearch-rails`.

## Built With

- Rails 7 ~ _Ruby Web development framework_

- Docker ~ _Platform for modern applications_

## Getting Started

To get a local copy up and running follow these simple example steps

- From your terminal enter in sequence

  - `git clone git@github.com:od-c0d3r/SearchableArticles.git`.

  - `cd SearchableArticles`.

### Available Scripts

In the project directory, run in order:

- #### `rails db:create`

  - Creates the project database.

- #### `rails db:migrate`

  - Creates the tables in the database.

- #### `rails db:seed`

  - Populate the tables with default records.

- #### `rails server`

  - Runs the app in the development mode.\
Open `http://localhost:PORT` to view it in your browser.

- #### `docker-compose up -d`

  - Use docker to install/operate elasticsearch and kibana servers on virtual clusters.

## Current Problems:
  - Enviromental issues with OpenSSL version is causing several errors when trying to import the data into `__elasticsearch__` model.
  - Regenerate the error
    - `rails c`
    - `Article.__elasticsearch__.create_index!`

  - Steps to overcome the issue:
    - Since OpenSSL is connunicationg directly with Ruby, tried to change Rails/Ruby versions.
    - Tried to host Elasticseach on local instead of docker.
  - Changed the search enigne technique to use [sunspot](https://github.com/sunspot/sunspot) instead of [elasticsearch-rails](https://github.com/elastic/elasticsearch-rails), but it was too late to develop the new tool
  - Had a basic idea on how to implement the dashboard using elasticseach and turbo-rails to show instat results on the page/dashboard.

## License

This project is [MIT](./MIT.md) licensed.
