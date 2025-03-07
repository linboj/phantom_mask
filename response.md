# Response
>
> The Current content is an **example template**; please edit it to fit your style and content.
>
## A. Required Information

### A.1. Requirement Completion Rate

- [x] List all pharmacies open at a specific time and on a day of the week if requested.
  - Implemented at `/api/v1/Pharmacy/opened` API.
- [x] List all masks sold by a given pharmacy, sorted by mask name or price.
  - Implemented at `/api/v1/Pharmacy/{id}/masks` API.
- [x] List all pharmacies with more or less than x mask products within a price range.
  - Implemented at `/api/v1/Pharmacy/filter_by_masks` API.
- [x] The top x users by total transaction amount of masks within a date range.
  - Implemented at `/api/v1/Transaction/top_users` API.
- [x] The total number of masks and dollar value of transactions within a date range.
  - Implemented at `/api/v1/Transaction/statistics` API.
- [x] Search for pharmacies or masks by name, ranked by relevance to the search term.
  - Implemented at `/api/v1/Search` API.
- [x] Process a user purchases a mask from a pharmacy, and handle all relevant data changes in an atomic transaction.
  - Implemented at `/api/v1/Transaction` API.

### A.2. API Document

Use swagger as the API documentation. Once you run the Docker with ASP.NET CORE and MySQL, visit <http://localhost:8080/swagger/index.html> to check out all API endpoints.

## B. Bonus Information

> If you completed the bonus requirements, please fill in your task below.
>
### B.1. Test Coverage Report

Not done

### B.2. Dockerized

Please check my docker-compose.yml at [here](./docker-compose.yml).

On the local machine, please follow the commands below to build it.

1. Setup require .env following [.env.example](./.env.example)

2. Startup Docker Compose

  ```bash
    docker-compose up -d
  ```

3. Wait for Application Start because mysql_db need to startup for a while.

### B.3. Demo Site Url

Not done
