# README

This is my attempt of the [Shopify Backend Developer Intern Challenge - Summer 2022](https://docs.google.com/document/d/1z9LZ_kZBUbg-O2MhZVVSqTmvDko5IJWHtuFmIu_Xg1A/edit).

In this README you will find all technical documentation including features and how to query the mysql database via graphql.

This document is divided in two sections :

[Information](#information)

[Sample GraphQL Queries](#sample-graphql-queries)

## Information

- Versions

  - Ruby version 3.0.3p157
  - Rails version 7.0.0

- System dependencies

  - mysql2
  - graphql
  - graphiql-rails

- Configuration

  - Change mysql username and password `config\database.yml`

- Database creation & initialization

  - `sudo service mysql restart`
  - `rake db:create db:migrate db:seed`
  - `rake db:reset db:seed` (optional: to reset database)

- How to run the test suite

  - `rails test`

- How to run the app

  - `rails s`

## Sample GraphQL Queries

### Navigate to /graphiql to try them out!

#### User login and sign up

_Note : For the sake of this demo, a user does **NOT** need to be logged in to perform any other queries._

Creates a new user:

```graphql
mutation {
  createUser(
    input: {
      name: "Ariel Sashcov"
      authProvider: {
        credentials: { email: "ariel.sashcov@gmail.com", password: "123456" }
      }
    }
  ) {
    id
    name
    email
  }
}
```

Creates new user token:

```graphql
mutation {
  signinUser(
    input: {
      credentials: { email: "ariel.sashcov@gmail.com", password: "123456" }
    }
  ) {
    token
    user {
      id
      email
      name
    }
  }
}
```

#### Warehouse list, creation & update

Creates a new Warehouse:

```graphql
mutation {
  createWarehouse(
    input: {
      name: "Bloomfields inc."
      description: "Straight Razors warehouse"
    }
  ) {
    warehouse {
      id
      name
      description
    }
  }
}
```

Updates a Warehouse:

```graphql
mutation {
  updateWarehouse(
    input: {
      id: 1
      name: "Sunnyside Storage"
      description: "New materials warehouse"
    }
  ) {
    success
    errors
    warehouse {
      id
      name
      description
    }
  }
}
```

Get all warehouses, products and productCount:

```graphql
query {
  warehouses {
    id
    name
    description
    productCount
    products {
      name
    }
  }
}
```

Get a warehouse by ID

```graphql
query {
  warehouse(id: 1) {
    name
    description
    productCount
  }
}
```

#### ProductCategory list, creation & update

Creates a new ProductCategory:

```graphql
mutation {
  createProductCategoryMutation(
    input: { name: "Straight Razors", description: "Straight razor blades" }
  ) {
    productCategory {
      id
      name
      description
      updatedAt
      createdAt
    }
  }
}
```

Updates a ProductCategory:

```graphql
mutation {
  updateProductCategory(
    input: {
      id: 1
      name: "Hair Cutting Shears"
      description: "Barber shears and hairdressing shears"
    }
  ) {
    success
    errors
    productCategory {
      id
      name
      description
    }
  }
}
```

Get all ProductCategory and their products:

```graphql
query {
  productCategories {
    id
    name
    description
    products {
      id
      name
      description
      price
      quantity
    }
  }
}
```

Get ProductCategory by ID

```graphql
query {
  productCategory(id: 1) {
    name
    description
    products {
      name
      description
    }
  }
}
```

#### Product list, creation & update

Creates a new Product:

```graphql
mutation {
  createProductMutation(
    input: {
      name: "Air Shear (6-Inch)"
      description: "The Texpert Collective"
      productCategoryId: 1
      warehouseId: 1
      price: 875.00
      quantity: 30
    }
  ) {
    product {
      id
      name
      description
      price
      quantity
      updatedAt
    }
  }
}
```

Updates a Product:

```graphql
mutation {
  updateProduct(
    input: {
      id: 1
      name: "Phantom II"
      description: "Arc Scissors"
      productCategoryId: 1
      warehouseId: 1
      price: 860.00
      quantity: 25
    }
  ) {
    success
    errors
    product {
      id
      name
      description
      productCategoryId
      warehouseId
      price
      quantity
    }
  }
}
```

Get all ProductCategory and their products:

```graphql
query {
  products {
    id
    name
    description
  }
}
```

Get ProductCategory by ID

```graphql
query {
  product(id: 1) {
    name
    description
  }
}
```
