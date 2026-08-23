# API Testing

## Overview

API testing artifacts for the E-commerce application.

The API testing scope covers authentication, user management, and product management using REST API requests and Postman.

---

## API Coverage

| Module | Method | Endpoint | Purpose |
|---|---|---|---|
| Authentication | POST | `/api/auth/login` | User login |
| Users | GET | `/api/users` | Get users |
| Users | GET | `/api/users/{id}` | Get user by ID |
| Users | POST | `/api/users` | Create user |
| Users | PUT | `/api/users/{id}` | Update user |
| Users | PATCH | `/api/users/{id}` | Partial user update |
| Users | DELETE | `/api/users/{id}` | Delete user |
| Products | GET | `/api/products` | Get products |
| Products | GET | `/api/products/{id}` | Get product by ID |
| Products | POST | `/api/products` | Create product |
| Products | PUT | `/api/products/{id}` | Update product |
| Products | PATCH | `/api/products/{id}` | Partial product update |
| Products | DELETE | `/api/products/{id}` | Delete product |

---

## Test Scope

### Authentication

- Valid login
- Invalid credentials
- Required field validation
- Access token validation
- Protected endpoint access

Detailed documentation:

[Authentication.md](./Authentication.md)

### Users

- User creation
- User retrieval
- User update
- User deletion
- Input validation
- Response validation

Detailed documentation:

[User-API.md](./User-API.md)

### Products

- Product creation
- Product retrieval
- Product update
- Product deletion
- Product validation
- Search and filtering validation

Detailed documentation:

[Product-API.md](./Product-API.md)

---

## Validation

API responses are validated for:

- Status code
- Response body
- JSON structure
- Required fields
- Data values
- Error responses
- Authentication
- Business rules

---

## Postman

Postman is used to execute and validate the API requests.

Collection:

`Postman-Collection/`

Evidence:

`../Evidence/postman/`

---

## Test Results

| Module | Test Cases | Passed | Failed | Status |
|---|---:|---:|---:|---|
| Authentication | - | - | - | Not Executed |
| Users | - | - | - | Not Executed |
| Products | - | - | - | Not Executed |

Results will be updated after API execution.

---

## Defects

API defects identified during execution are documented in:

`../Bug_Reports/`

Related evidence is stored in:

`../Evidence/postman/`
