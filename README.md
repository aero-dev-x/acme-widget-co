# ACME Project

## Overview

This project is a Ruby application with models for products, baskets, delivery charges, and discounts. It includes automated tests using Minitest. The project is containerized using Docker for easy setup and consistent environments.

---

## Project Structure

```
.
├── Dockerfile
├── models/
│   ├── basket.rb
│   ├── product.rb
│   ├── delivery_charge.rb
│   └── discount.rb
├── test/
│   ├── basket_test.rb
│   └── setup.rb
├── constants.rb
└── ...
```

---

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your machine

---

## Running the Application with Docker

1. **Build the Docker image:**

   ```sh
   docker build -t acme-app .
   ```

2. **Run the application container:**

   ```sh
   docker run -it acme-app
   ```

---

## Running Tests with Docker

### Option 1:

```sh
docker run --rm acme-app bundle exec ruby -Itest test/basket_test.rb
```

### Running All Tests

To run all test files:

```sh
docker run --rm acme-app bundle exec ruby -Itest -e "Dir['test/*_test.rb'].each { |f| require_relative f }"
```

---

## Notes

- The `Dockerfile` should install Ruby and dependencies (e.g., via Bundler).
- Make sure your `Gemfile` includes `minitest` if not already present.
- You can add more test files to the `test/` directory and run them similarly.

---
