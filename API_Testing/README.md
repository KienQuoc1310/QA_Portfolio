# API Testing

## 1. Overview

This section demonstrates API testing for an e-commerce application.

The purpose is to demonstrate practical QA skills in:

- REST API testing
- HTTP methods
- Request validation
- Response validation
- Status code validation
- JSON validation
- Authentication
- Authorization
- Positive testing
- Negative testing
- Boundary testing
- Business rule validation
- Data validation
- Postman
- SQL validation
- API defect reporting

---

## 2. API Testing Scope

The API testing scope covers:

```text
Authentication
Users
Products
```

### Authentication

Responsible for:

- User login
- Credential validation
- Access token generation
- Token validation
- Protected API access

File:

```text
Authentication.md
```

### Users

Responsible for:

- Create user
- Retrieve user
- Update user
- Partially update user
- Delete user
- User validation
- User authorization

File:

```text
User-API.md
```

### Products

Responsible for:

- Create product
- Retrieve product
- Update product
- Delete product
- Product search
- Product filtering
- Product sorting
- Pagination
- Product validation

File:

```text
Product-API.md
```

---

## 3. API Architecture

```text
                   QA
                    |
                    v
                 Postman
                    |
                    | HTTP Request
                    v
               API Server
                    |
          +---------+---------+
          |                   |
          v                   v
    Business Logic        Validation
          |                   |
          +---------+---------+
                    |
                    v
                Database
                    |
                    v
               API Response
                    |
                    v
                   QA
```

---

## 4. API Request

An API request may contain:

```text
HTTP Method
URL
Path Parameters
Query Parameters
Headers
Authentication
Request Body
```

Example structure:

```http
POST /api/users
Content-Type: application/json
Authorization: Bearer <token>
```

Request body:

```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "Password123"
}
```

---

## 5. API Response

An API response normally contains:

```text
HTTP Status Code
Response Headers
Response Body
```

Example:

```http
HTTP/1.1 201 Created
Content-Type: application/json
```

Response:

```json
{
  "id": 1001,
  "name": "John Doe",
  "email": "john@example.com",
  "role": "customer"
}
```

---

## 6. HTTP Methods

| Method | Purpose | Typical API Operation |
|---|---|---|
| GET | Retrieve data | Get user/product |
| POST | Create resource | Create user/product |
| PUT | Replace resource | Update complete resource |
| PATCH | Partially update resource | Update selected fields |
| DELETE | Remove resource | Delete user/product |

---

## 7. HTTP Status Codes

| Status Code | Meaning | Typical Use |
|---:|---|---|
| 200 | OK | Successful request |
| 201 | Created | Resource successfully created |
| 204 | No Content | Successful request without response body |
| 400 | Bad Request | Invalid request |
| 401 | Unauthorized | Authentication failure |
| 403 | Forbidden | Authorization failure |
| 404 | Not Found | Resource does not exist |
| 409 | Conflict | Resource conflict |
| 422 | Unprocessable Entity | Validation failure |
| 429 | Too Many Requests | Rate limit exceeded |
| 500 | Internal Server Error | Unexpected server error |
| 502 | Bad Gateway | Upstream service error |
| 503 | Service Unavailable | Service unavailable |

Expected status codes must follow the API contract.

---

## 8. Request Validation

Request validation covers:

### Required Fields

Verify that required fields cannot be omitted.

### Empty Values

Verify behavior when a field contains:

```text
""
```

### Null Values

Verify behavior when a field contains:

```json
null
```

### Data Types

Verify that fields accept only their expected data types.

Example:

```json
{
  "id": 1001,
  "name": "John",
  "active": true
}
```

Expected types:

```text
id      → integer
name    → string
active  → boolean
```

### Format Validation

Examples:

```text
Email
Date
Phone Number
URL
UUID
```

### Boundary Validation

Verify values around minimum and maximum limits.

---

## 9. Response Validation

Response validation includes:

```text
Status Code
Headers
Response Body
JSON Structure
Field Names
Data Types
Required Fields
Field Values
Business Rules
Sensitive Data
```

Example:

```json
{
  "id": 1001,
  "email": "john@example.com",
  "role": "customer"
}
```

Verify:

- `id` has the expected type.
- `email` has the expected type and format.
- `role` contains an allowed value.
- Required fields exist.
- Unexpected sensitive fields are not exposed.

---

## 10. JSON Validation

API responses use JSON structures.

Example:

```json
{
  "id": 1001,
  "name": "John Doe",
  "email": "john@example.com"
}
```

QA should verify:

- Valid JSON syntax
- Correct field names
- Required fields
- Correct data types
- Correct nested structure
- Correct array structure
- Correct values
- Nullable fields
- Unexpected fields
- Sensitive data exposure

---

## 11. Positive Testing

Positive testing verifies valid input and expected successful behavior.

Coverage includes:

```text
Valid authentication
Valid user creation
Valid user retrieval
Valid user update
Valid user deletion
Valid product creation
Valid product retrieval
Valid product update
Valid product deletion
Valid product search
```

Expected flow:

```text
Valid Request
      |
      v
API Processes Request
      |
      v
Expected Status Code
      |
      v
Expected Response
```

---

## 12. Negative Testing

Negative testing verifies how the API handles invalid conditions.

Coverage includes:

```text
Missing required fields
Empty values
Null values
Invalid data types
Invalid formats
Invalid IDs
Non-existing resources
Duplicate resources
Invalid credentials
Missing authentication
Invalid token
Expired token
Insufficient permissions
Invalid business conditions
```

Expected flow:

```text
Invalid Request
      |
      v
API Rejects Request
      |
      v
Expected Error Status
      |
      v
Expected Error Response
```

---

## 13. Boundary Value Analysis

Boundary testing verifies values around defined limits.

Example:

```text
Minimum = 8
Maximum = 64
```

Test:

```text
7  → Invalid
8  → Valid
9  → Valid

63 → Valid
64 → Valid
65 → Invalid
```

Boundary testing will be applied where the API has defined limits.

---

## 14. Authentication

Authentication verifies the identity of the requester.

Typical flow:

```text
Email + Password
       |
       v
Login API
       |
       v
Credential Validation
       |
       v
Access Token
       |
       v
Protected API
```

Authentication testing includes:

- Valid credentials
- Invalid credentials
- Missing credentials
- Invalid token
- Missing token
- Expired token
- Token usage
- Protected endpoint access

Detailed authentication testing:

```text
Authentication.md
```

---

## 15. Authorization

Authorization verifies whether an authenticated user has permission to perform an operation.

Example:

```text
Customer
   |
   +--> View products      → Allowed
   |
   +--> Create product     → Depends on permission
   |
   +--> Delete user        → Forbidden
```

Authorization testing includes:

- Role-based access
- Permission validation
- Resource ownership
- Protected operations
- Privilege escalation
- Unauthorized resource access

---

## 16. Business Rule Validation

API testing must verify more than HTTP status codes.

Business rules may include:

```text
User must have unique email
Inactive users cannot login
Only authorized users can create products
Product price cannot be negative
Product quantity cannot be negative
Deleted resources cannot be retrieved
Required relationships must exist
```

Business rules must be validated against the application's requirements.

---

## 17. CRUD Testing

CRUD represents:

```text
Create
Read
Update
Delete
```

Typical API flow:

```text
POST
 |
 v
Create Resource
 |
 v
GET
 |
 v
Read Resource
 |
 v
PUT / PATCH
 |
 v
Update Resource
 |
 v
DELETE
 |
 v
Delete Resource
```

CRUD testing will be applied to:

```text
Users
Products
```

---

## 18. Data Consistency

API responses should remain consistent with stored data.

Example:

```text
Create Resource
       |
       v
API Response
       |
       v
Resource ID
       |
       v
GET Resource
       |
       v
Database Validation
```

Validation should compare:

```text
API Response
      vs
Database Record
```

where database access is available.

---

## 19. Authentication → API Flow

Protected API testing follows:

```text
Login
  |
  v
Receive Token
  |
  v
Store Token
  |
  v
Send Token
  |
  v
Protected Endpoint
  |
  v
Validate Response
```

Invalid authentication:

```text
Missing / Invalid Token
        |
        v
Protected Endpoint
        |
        v
401 Unauthorized
```

Insufficient authorization:

```text
Valid Token
     |
     v
Insufficient Permission
     |
     v
403 Forbidden
```

---

## 20. API Security Testing

Security checks include:

- Authentication enforcement
- Authorization enforcement
- Invalid token handling
- Expired token handling
- Resource-level authorization
- Privilege escalation
- Sensitive data exposure
- Password exposure
- Token exposure
- Unauthorized access
- Unexpected privileged fields
- User enumeration

Security testing must be performed without causing harm to production systems.

---

## 21. Error Handling

API errors should be:

- Predictable
- Consistent
- Meaningful
- Appropriate for the HTTP status
- Free from unnecessary sensitive information

Example:

```json
{
  "error": "VALIDATION_ERROR",
  "message": "Email is required"
}
```

Validate:

```text
Status Code
Error Code
Error Message
Response Structure
Sensitive Information
```

---

## 22. Postman

Postman will be used to:

- Create API requests
- Organize requests into collect
