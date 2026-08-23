# Product API Testing

## API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/api/products` | Get products |
| GET | `/api/products/{id}` | Get product by ID |
| POST | `/api/products` | Create product |
| PUT | `/api/products/{id}` | Update product |
| PATCH | `/api/products/{id}` | Partially update product |
| DELETE | `/api/products/{id}` | Delete product |

---

## Test Scenarios

### GET Products

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| PRODUCT-001 | Get products | `200 OK` and product list returned | Not Executed |
| PRODUCT-002 | Get products with pagination | Correct page and limit returned | Not Executed |
| PRODUCT-003 | Search product by keyword | Matching products returned | Not Executed |
| PRODUCT-004 | Filter products by category | Products match selected category | Not Executed |
| PRODUCT-005 | Sort products by price | Products returned in expected order | Not Executed |

### GET Product by ID

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| PRODUCT-006 | Get existing product | `200 OK` and correct product returned | Not Executed |
| PRODUCT-007 | Get non-existing product | `404 Not Found` | Not Executed |
| PRODUCT-008 | Get product with invalid ID | Validation error | Not Executed |

### POST Create Product

Request:

```json
{
  "name": "Wireless Mouse",
  "price": 25.99,
  "category": "Electronics",
  "quantity": 100
}
```

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| PRODUCT-009 | Create product with valid data | `201 Created` and product created | Not Executed |
| PRODUCT-010 | Create product without name | Validation error | Not Executed |
| PRODUCT-011 | Create product with negative price | Validation error | Not Executed |
| PRODUCT-012 | Create product with negative quantity | Validation error | Not Executed |
| PRODUCT-013 | Create product with invalid data type | Validation error | Not Executed |

### PUT Update Product

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| PRODUCT-014 | Update existing product | `200 OK` and product updated | Not Executed |
| PRODUCT-015 | Update non-existing product | `404 Not Found` | Not Executed |
| PRODUCT-016 | Update product with invalid price | Validation error | Not Executed |

### PATCH Update Product

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| PRODUCT-017 | Update product price | `200 OK` and price updated | Not Executed |
| PRODUCT-018 | Update product quantity | `200 OK` and quantity updated | Not Executed |
| PRODUCT-019 | Update with invalid value | Validation error | Not Executed |

### DELETE Product

| ID | Scenario | Expected Result | Status |
|---|---|---|---|
| PRODUCT-020 | Delete existing product | `204 No Content` or API-defined success response | Not Executed |
| PRODUCT-021 | Delete non-existing product | `404 Not Found` | Not Executed |
| PRODUCT-022 | Delete without permission | `403 Forbidden` | Not Executed |

---

## Response Validation
Validate:

- Status code
- Response body
- JSON structure
- Product ID
- Product name
- Price
- Category
- Quantity
- Required fields
- Data values
- Error response

---

## Business Validation

| Validation | Expected |
|---|---|
| Product name | Required |
| Price | Must not be negative |
| Quantity | Must not be negative |
| Category | Valid category |
| Product ID | Unique |
| Deleted product | Cannot be retrieved |

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
Postman-Collection/Products
```

Environment variables:

```text
baseUrl
accessToken
productId
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
| 22 | 0 | 0 | 22 |
