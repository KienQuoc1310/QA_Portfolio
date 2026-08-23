# API Testing

## Overview

This section contains API testing artifacts for the E-commerce application.

The purpose is to demonstrate practical QA activities including:

- REST API testing
- Request validation
- Response validation
- HTTP status code validation
- Authentication
- Authorization
- Positive and negative testing
- Boundary value testing
- Business rule validation
- Data validation
- Postman testing

---

## API Scope

The API testing covers the following areas:

| Area | Description | Artifact |
|---|---|---|
| Authentication | Login, token handling and protected API access | [Authentication.md](./Authentication.md) |
| Users | User CRUD and validation | [User-API.md](./User-API.md) |
| Products | Product CRUD, search and validation | [Product-API.md](./Product-API.md) |

---

## API Testing Approach

Each API is tested through the following process:

```text
API Requirement
      ↓
Endpoint Analysis
      ↓
Request Validation
      ↓
Positive Testing
      ↓
Negative Testing
      ↓
Boundary Testing
      ↓
Authentication / Authorization
      ↓
Response Validation
      ↓
Business Rule Validation
      ↓
Data Validation
      ↓
Test Result
      ↓
Bug Report
```

---

## Request Validation

The following request components are validated where applicable:

- HTTP method
- Endpoint
- Path parameters
- Query parameters
- Headers
- Authentication
- Request body
- Required fields
- Data types
- Field formats
- Boundary values

---

## Response Validation

API responses are validated for:

- HTTP status code
- Response headers
- Response body
- JSON structure
- Required fields
- Field names
- Data types
- Field values
- Business rules
- Error handling
- Sensitive data exposure

---

## HTTP Methods

| Method | Purpose |
|---|---|
| GET | Retrieve data |
| POST | Create data |
| PUT | Update a complete resource |
| PATCH | Update selected fields |
| DELETE | Remove a resource |

---

## Status Code Coverage

| Status | Purpose |
|---:|---|
| 200 | Successful request |
| 201 | Resource created |
| 204 | Successful request with no response body |
| 400 | Invalid request |
| 401 | Authentication failure |
| 403 | Authorization failure |
| 404 | Resource not found |
| 409 | Resource conflict |
| 422 | Validation failure |
| 429 | Rate limit exceeded |
| 500 | Server error |
| 503 | Service unavailable |

Expected status codes are validated against the API requirements.

---

## Test Coverage

### Functional Testing

- Valid requests
- Invalid requests
- CRUD operations
- Request validation
- Response validation
- Business rules

### Authentication

- Valid credentials
- Invalid credentials
- Missing authentication
- Invalid token
- Expired token
- Protected endpoints

### Authorization

- User permissions
- Role-based access
- Resource access
- Unauthorized operations
- Privilege escalation

### Validation

- Required fields
- Empty values
- Null values
- Invalid data types
- Invalid formats
- Boundary values
- Duplicate data
- Non-existing resources

### Data Validation

- API response vs expected data
- API response vs database data
- Created records
- Updated records
- Deleted records

---

## Postman

Postman is used for:

- API request execution
- Environment variables
- Authentication handling
- Request organization
- Response validation
- Test scripts
- Collection execution
- Test evidence

Postman artifacts are stored under:

```text
API_Testing/Postman-Collection/
```

---

## API Test Evidence

Evidence generated during API testing is stored under:

```text
Evidence/postman/
```

Examples of evidence:

- Successful API requests
- Failed API requests
- Response validation
- Authentication testing
- Authorization testing
- Postman test results

---

## Defect Reporting

When an API test fails:

```text
Test Failure
     ↓
Reproduce
     ↓
Collect Evidence
     ↓
Create Bug Report
     ↓
Developer Fix
     ↓
Retest
     ↓
Regression
```

API defects are documented under:

```text
Bug_Reports/
```

---

## Related Files

```text
API_Testing/
│
├── README.md
├── Authentication.md
├── User-API.md
├── Product-API.md
└── Postman-Collection/
```

Supporting artifacts:

```text
SQL_Queries/
Bug_Reports/
Evidence/
Test_Reports/
```

---

## API Testing Result

The API testing section is intended to demonstrate the ability to:

- Analyze API requirements
- Design API test scenarios
- Validate requests and responses
- Test positive and negative conditions
- Test authentication and authorization
- Validate business rules
- Perform data validation
- Execute tests using Postman
- Collect test evidence
- Report API defects
- Perform retesting and regression testing
