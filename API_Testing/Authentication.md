# Authentication API Testing

## Endpoint

| Method | Endpoint | Description |
|---|---|---|
| POST | `/api/auth/login` | Authenticate user and return access token |

---

## Request

### Headers

```text
Content-Type: application/json
```

### Body

```json
{
  "email": "user@example.com",
  "password": "Password123"
}
```

---

## Test Scenarios

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| AUTH-001 | Login with valid credentials | `200 OK` and access token returned | Not Executed |
| AUTH-002 | Login with invalid password | `401 Unauthorized` | Not Executed |
| AUTH-003 | Login with non-existing email | `401 Unauthorized` | Not Executed |
| AUTH-004 | Login with missing email | `400 Bad Request` | Not Executed |
| AUTH-005 | Login with missing password | `400 Bad Request` | Not Executed |
| AUTH-006 | Login with invalid email format | Validation error | Not Executed |
| AUTH-007 | Login with empty credentials | Validation error | Not Executed |

---

## Response Validation

### Successful Login

Validate:

- Status code
- Access token
- Response structure
- Token is not empty
- Password is not exposed

### Failed Login

Validate:

- Status code
- Error response
- Error message
- No access token is returned

---

## Token Validation

Protected endpoints require:

```text
Authorization: Bearer {{accessToken}}
```

Test:

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| AUTH-008 | Valid token | Request is accepted | Not Executed |
| AUTH-009 | Missing token | `401 Unauthorized` | Not Executed |
| AUTH-010 | Invalid token | `401 Unauthorized` | Not Executed |
| AUTH-011 | Expired token | `401 Unauthorized` | Not Executed |

---

## Postman

Collection:

```text
Postman-Collection/Authentication
```

Environment variables:

```text
baseUrl
email
password
accessToken
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
| 11 | 0 | 0 | 11 |
