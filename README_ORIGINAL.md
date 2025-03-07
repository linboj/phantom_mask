# Phantom Mask
You are building a backend service and a database for a pharmacy platform with the following two raw datasets:

## A. Raw Data
### A.1. Pharmacy Data
Link: [data/pharmacies.json](data/pharmacies.json)

This dataset contains a list of pharmacies with their names, opening hours, cash balances, and mask products. The cash balance represents the amount of money a pharmacy holds in the merchant account on this platform. In addition, it increases the mask price whenever a user purchases masks from the pharmacy.

> Please be careful at processing pharmacies.json's openingHours value; it contains different time formats.

### A.2. User data
Link: [data/users.json](data/users.json)

This dataset contains a list of users with their names, cash balances, and purchasing histories. The cash balance represents the amount of money a user holds in his wallet on this platform. In addition, it decreases the mask price whenever the user buys masks.

These are all raw data, which means you can process and transform the data before you load it into your database.

## B. The Task Requirments
The task is to build an API server with documentation and a backing relational database that will allow a front-end client to navigate through that sea of data quickly and intuitively. In addition, the front-end team will build the front-end client based on the documentation.

The operations the frontend team would need you to support are:

* List all pharmacies open at a specific time and on a day of the week if requested.
* List all masks sold by a given pharmacy, sorted by mask name or price.
* List all pharmacies with more or less than x mask products within a price range.
* The top x users by total transaction amount of masks within a date range.
* The total amount of masks and dollar value of transactions within a date range.
* Search for pharmacies or masks by name, ranked by relevance to the search term.
* Process a user purchases a mask from a pharmacy, and handle all relevant data changes in an atomic transaction.

In your repository, you would need to document the API interface, the commands to run the ETL (extract, transform, and load) script that takes in the raw data sets as input and outputs to your database, and the command to set up your server and database.

> If you think the description requirement is not detailed, please try to make your design as close to the living and make sense.

## C. Response Your Job **(Importmant)**
1. Fork this repository to your GitHub account, and set the repository as **private**.
2. Add [william-eth](https://github.com/william-eth) and [ting-wei](https://github.com/ting-wei-huang) to your private repository as a collaborator.
3. Write an introduction to all your works on [response.md](response.md).
4. Write an email to let HR know you are all done. Don't forget the necessary information, such as your GitHub account and the repository URL.

### C.1. Common Mistakes You Should Avoid

1. Missing documentation.
2. Project does not work.
3. Provided solution does not meet the requirements.
4. Poor knowledge of version control systems.
    - Temporary/redundant/binary files (.DS_Store, .idea, .vscode) are in repository or result archive. Choose a good [.gitignore](https://gist.github.com/octocat/9257657)

## D. How We Review

Your project will be reviewed by at least one of our backend engineers.
### D.1. Main Standards
1. (40%) How familiar with your programming language and framework.
    - Code Quality
        - Is the code simple, easy to understand/extend, reusable and maintainable?
        - Is polluted with nasty comments or redundant code blocks inside?
        - Is the coding style consistent with the language guidelines?
        - Are there any apparent vulnerabilities in security?
    - Logic Design
        - Is the database design match the requirements, and is it easy to understand/extend?
        - The way you import and clean the raw data to your database.
        - Is the API logic design match the requirements and be close to the living?
    - MVC Architecture (optional)
        - Is the design pattern consistent with the framework guidelines?
        - Don't forget the rule `Stop trying to reinvent the wheel` if you uses the framework.
2. (30%) Finish rate of the task requirements.
3. (20%) API Quality
    - API should be able to evolve and add functionality independently from client applications. As the API grows, existing client applications should continue functioning without modification.
    - All functionality should be discoverable so client applications can fully use it.
4. (10%) Communication
    - Is the API document easy to understand for front-end engineers?
### D.2. Bonus
> This is optional and serves as additional proof points. We will consider it complete even without this functionality. **If you are applying for Senior Back-End Engineer, you MUST do all bonus task requirements.**

1. (5%) Testing
    - Write appropriate tests with a proper coverage report.
2. (5%) Dockerize
    - You may use docker to ensure a uniform setup across environments.
3. (5%) Deploy
    - It'd be great if you could deploy this on the free tier of any cloud hosting platform (e.g., [fly.io](https://fly.io/docs/speedrun/), or [render](https://render.com/docs/web-services)) so that we can easily access the application via an URL.
