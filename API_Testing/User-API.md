# User API Testing

## API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/api/users` | Get users |
| GET | `/api/users/{id}` | Get user by ID |
| POST | `/api/users` | Create user |
| PUT | `/api/users/{id}` | Update user |
| PATCH | `/api/users/{id}` | Partially update user |
| DELETE | `/api/users/{id}` | Delete user |

---

## Test Scenarios

### GET Users

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| USER-001 | Get users with valid request | `200 OK` and user list returned | Not Executed |
| USER-002 | Get users with pagination | Correct page and limit returned | Not Executed |
| USER-003 | Get users with invalid pagination | Validation error | Not Executed |

### GET User by ID

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| USER-004 | Get existing user | `200 OK` and correct user returned | Not Executed |
| USER-005 | Get non-existing user | `404 Not Found` | Not Executed |
| USER-006 | Get user with invalid ID | Validation error | Not Executed |

### POST Create User

Request:

```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "Password123"
}
```

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| USER-007 | Create user with valid data | `201 Created` and user created | Not Executed |
| USER-008 | Create user with existing email | `409 Conflict` or validation error | Not Executed |
| USER-009 | Create user with missing required field | Validation error | Not Executed |
| USER-010 | Create user with invalid email | Validation error | Not Executed |

### PUT Update User

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| USER-011 | Update existing user | `200 OK` and data updated | Not Executed |
| USER-012 | Update non-existing user | `404 Not Found` | Not Executed |
| USER-013 | Update with invalid data | Validation error | Not Executed |

### PATCH Update User

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| USER-014 | Update one valid field | `200 OK` and field updated | Not Executed |
| USER-015 | Update with invalid field value | Validation error | Not Executed |

### DELETE User

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| USER-016 | Delete existing user | `204 No Content` or API-defined success response | Not Executed |
| USER-017 | Delete non-existing user | `404 Not Found` | Not Executed |
| USER-018 | Delete without permission | `403 Forbidden` | Not Executed |

---

## Response Validation

Validate:

- Status code
- Response body
- JSON structure
- User ID
- Required fields
- Data values
- Error response
- Password is not exposed

---

## CRUD Coverage

```text
CREATE  → POST
READ    → GET
UPDATE  → PUT / PATCH
DELETE  → DELETE
```

---

## Postman

Collection:

```text
Postman-Collection/Users
```

Environment variables:

```text
baseUrl
accessToken
userId
```

Authorization:

```text
Bearer {{accessToken}}
```

---

## Evidence

Postman execution evidence:

```text
Evidence/postman/
```

---

## Test Result

| Total | Passed | Failed | Not Executed |
|---:|---:|---:|---:|
| 18 | 0 | 0 | 18 |
