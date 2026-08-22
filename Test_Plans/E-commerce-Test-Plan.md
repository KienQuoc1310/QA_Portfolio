# E-commerce Web Application — Test Plan

## 1. Document Information

| Item | Information |
|---|---|
| Project | E-commerce Web Application |
| Document | Test Plan |
| Version | 1.0 |
| Status | Draft |
| Testing Type | Manual Web Testing |

---

## 2. Objective

The objective of this testing activity is to verify that the main functions of the E-commerce Web Application work according to the defined requirements.

The testing will focus on the correctness of core user flows, including user authentication, product browsing, shopping cart management, checkout, and order creation.

The testing process will also identify, document, retest, and verify defects discovered during the test cycle.

---

## 3. Scope

The following application modules are included in this testing scope:

### 3.1 User Registration

- Registration with valid information
- Registration with invalid information
- Required field validation
- Email format validation
- Duplicate account registration
- Password validation

### 3.2 User Login

- Login with valid credentials
- Login with invalid credentials
- Required field validation
- Invalid email format
- Authentication behavior
- Logout behavior

### 3.3 Product Search

- Search with valid keywords
- Search with invalid keywords
- Search with empty input
- Search result accuracy
- No-result behavior

### 3.4 Product Details

- Product name
- Product description
- Product price
- Product image
- Product availability
- Product information display

### 3.5 Shopping Cart

- Adding products to cart
- Removing products from cart
- Updating product quantity
- Cart total calculation
- Cart persistence

### 3.6 Checkout

- Customer information
- Shipping information
- Order summary
- Order total
- Order creation

### 3.7 Order

- Order creation
- Order information
- Order status
- Order history

---

## 4. Out of Scope

The following areas are outside the scope of this testing project:

- Internal infrastructure of third-party payment providers
- Server infrastructure
- Performance and load testing
- Penetration testing
- Source code review
- Production monitoring
- Internal functionality of external third-party services

---

## 5. Test Strategy

Testing will follow a structured manual testing approach.

The testing process will include:

1. Analyze the requirements.
2. Identify testable functionality.
3. Define test scenarios.
4. Design detailed test cases.
5. Prepare test data.
6. Execute test cases.
7. Document discovered defects.
8. Retest fixed defects.
9. Perform regression testing.
10. Document final testing results.

---

## 6. Test Types

### 6.1 Functional Testing

Verify that each in-scope feature works according to the defined requirements.

### 6.2 Negative Testing

Verify that the application handles invalid, incomplete, or unexpected input correctly.

### 6.3 Smoke Testing

Verify that the main application functions are operational before detailed testing begins.

### 6.4 Regression Testing
Verify that existing functionality continues to work after application changes or defect fixes.

### 6.5 Exploratory Testing

Explore the application beyond predefined test cases to identify unexpected behavior and defects.

---

## 7. Test Design Techniques

The following test design techniques will be used:

### 7.1 Equivalence Partitioning

Input data will be divided into valid and invalid equivalence classes.

### 7.2 Boundary Value Analysis

Boundary values will be tested for fields with defined minimum or maximum limits.

### 7.3 Error Guessing

Common user mistakes and potential failure conditions will be considered when designing test cases.

---

## 8. Test Environment

### Hardware

- Desktop computer

### Operating System

- Windows 11

### Browsers

- Google Chrome
- Microsoft Edge

### Application Environment

- Test / Staging environment

### Testing Tools

- Chrome DevTools
- Postman
- GitHub
- SQL
- Jira

---

## 9. Test Data

The following test data categories will be prepared:

### User Data

- New user registration data
- Existing user accounts
- Valid login credentials
- Invalid login credentials
- Invalid email formats
- Missing required fields

### Product Data

- Available products
- Out-of-stock products
- Products with different prices
- Products with different quantities

### Cart Data

- Single product
- Multiple products
- Different quantities
- Product removal

### Checkout Data

- Valid customer information
- Invalid customer information
- Missing required information
- Valid shipping information
- Invalid shipping information

---

## 10. Entry Criteria

Testing can begin when:

- Requirements for in-scope functionality are available.
- The test environment is available and accessible.
- The application build has been deployed.
- Required test data is available.
- Core application functions are accessible.
- No blocking environment issue prevents test execution.

---

## 11. Exit Criteria

Testing can be completed when:

- All planned test cases have been executed.
- Critical defects have been resolved or formally accepted.
- High-severity defects have been reviewed.
- Required regression testing has been completed.
- Test execution results have been documented.
- The final test report has been completed.

---

## 12. Risks & Mitigation

| Risk | Impact | Mitigation |
|---|---|---|
| Test environment unavailable | High | Verify environment availability before execution |
| Requirements change during testing | High | Review changes and update affected test cases |
| Test data unavailable | Medium | Prepare test data before execution |
| Critical defect blocks testing | High | Prioritize defect investigation |
| Limited testing time | Medium | Prioritize critical user flows |

---

## 13. Deliverables

The following QA artifacts will be produced:

- Test Plan
- Test Scenarios
- Test Cases
- Testing Checklists
- Bug Reports
- API Testing Documentation
- SQL Validation Queries
- Test Execution Report
- Final Test Report
---

## 14. Test Schedule

| Activity | Status |
|---|---|
| Requirement Analysis | Completed |
| Test Planning | Completed |
| Test Scenario Design | Planned |
| Test Case Design | Planned |
| Test Data Preparation | Planned |
| Test Execution | Planned |
| Defect Reporting | Planned |
| Retesting | Planned |
| Regression Testing | Planned |
| Final Test Report | Planned |

---

## 15. Roles & Responsibilities

This portfolio project is developed as an individual QA practice project.

| Role | Responsibility |
|---|---|
| QA Tester | Requirement analysis, test design, test execution, defect reporting and test reporting |
| Developer | Simulated role for defect investigation and resolution |
| Product Owner | Simulated role for requirement clarification |

---

## 16. Version History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial | Initial Test Plan created |
