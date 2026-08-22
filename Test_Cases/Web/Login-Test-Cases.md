# Login Test Cases

## 1. Test Case Information

| Item | Information |
|---|---|
| Module | User Login |
| Application | E-commerce Web Application |
| Test Type | Functional / Negative / Validation / Regression |
| Priority | High |
| Test Environment | Web |
| Related Test Plan | E-commerce-Test-Plan.md |

---

## 2. Test Scenarios

The following scenarios will be tested:

- Login with valid credentials
- Login with invalid credentials
- Login with an unregistered account
- Login with empty fields
- Login with invalid email format
- Login with incorrect password
- Password field behavior
- Login button behavior
- Error message behavior
- Successful login behavior
- Logout behavior
- Session behavior

---

## 3. Test Cases

### 3.1 Positive Test Cases

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-001 | Login with valid credentials | Registered account exists | 1. Open Login page<br>2. Enter valid email<br>3. Enter valid password<br>4. Click Login | Valid registered email + valid password | User is successfully logged in and redirected to the expected page | High |
| TC-LOGIN-002 | Login with valid credentials after page refresh | Registered account exists | 1. Open Login page<br>2. Enter valid credentials<br>3. Click Login<br>4. Refresh the page | Valid credentials | User remains authenticated according to the expected session behavior | Medium |

---

### 3.2 Negative Test Cases

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-003 | Login with incorrect password | Registered account exists | 1. Open Login page<br>2. Enter valid email<br>3. Enter incorrect password<br>4. Click Login | Valid email + incorrect password | Login is rejected and an appropriate error message is displayed | High |
| TC-LOGIN-004 | Login with unregistered email | No account exists for the email | 1. Open Login page<br>2. Enter unregistered email<br>3. Enter password<br>4. Click Login | Unregistered email + password | Login is rejected and an appropriate error message is displayed | High |
| TC-LOGIN-005 | Login with both invalid email and invalid password | Login page available | 1. Open Login page<br>2. Enter invalid email<br>3. Enter incorrect password<br>4. Click Login | Invalid email + incorrect password | Login is rejected and appropriate validation/error feedback is displayed | High |

---

### 3.3 Required Field Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-006 | Login with empty email | Login page available | 1. Leave email empty<br>2. Enter valid password<br>3. Click Login | Empty email + valid password | Email validation message is displayed and login is not completed | High |
| TC-LOGIN-007 | Login with empty password | Login page available | 1. Enter valid email<br>2. Leave password empty<br>3. Click Login | Valid email + empty password | Password validation message is displayed and login is not completed | High |
| TC-LOGIN-008 | Login with both fields empty | Login page available | 1. Leave email empty<br>2. Leave password empty<br>3. Click Login | Empty email + empty password | Required validation messages are displayed and login is not completed | High |

---

### 3.4 Email Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-009 | Login with invalid email format | Login page available | 1. Enter invalid email format<br>2. Enter password<br>3. Click Login | `userexample.com` | Email format validation is displayed | Medium |
| TC-LOGIN-010 | Login with email without domain | Login page available | 1. Enter email without domain<br>2. Enter password<br>3. Click Login | `user@example` | Email validation is displayed | Medium |
| TC-LOGIN-011 | Login with email containing spaces | Login page available | 1. Enter email containing spaces<br>2. Enter password<br>3. Click Login | `user @example.com` | Application handles the invalid format according to requirements | Medium |

---

### 3.5 Password Field Testing

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-012 | Verify password is masked | Login page available | 1. Open Login page<br>2. Click password field<br>3. Enter password | Valid password | Password characters are masked | Medium |
| TC-LOGIN-013 | Verify password visibility control | Login page available | 1. Enter password<br>2. Click password visibility control | Valid password | Password visibility changes according to the control behavior | Medium |
| TC-LOGIN-014 | Login with incorrect password case | Registered account exists | 1. Enter valid email<br>2. Enter password with incorrect letter case<br>3. Click Login | Case variation of valid password | Login is rejected if password is case-sensitive | High |

---

### 3.6 Login Button and UI Behavior

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-015 | Verify Login button is visible | Login page available | Open Login page | N/A | Login button is visible and usable | Medium |
| TC-LOGIN-016 | Submit login using Enter key | Login page available | 1. Enter valid credentials<br>2. Press Enter | Valid credentials | Login is submitted according to the expected behavior | Medium |
| TC-LOGIN-017 | Verify login form remains usable after validation error | Login page available | 1. Submit invalid data<br>2. Observe validation<br>3. Correct the input | Invalid then valid data | User can correct the data and submit the form successfully | Medium |

---

### 3.7 Successful Login and Session
| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-018 | Verify successful login state | Registered account exists | 1. Login with valid credentials<br>2. Observe application state | Valid credentials | User is authenticated and logged-in state is displayed | High |
| TC-LOGIN-019 | Verify authenticated user can access protected page | User is logged in | 1. Login successfully<br>2. Navigate to a protected page | Valid account | Protected page is accessible | High |
| TC-LOGIN-020 | Verify unauthenticated user cannot access protected page | User is logged out | 1. Log out<br>2. Attempt to access protected page | Protected page URL | User is redirected or denied according to requirements | High |

---

### 3.8 Logout

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-LOGIN-021 | Logout successfully | User is logged in | 1. Click Logout | N/A | User is logged out successfully | High |
| TC-LOGIN-022 | Verify protected page after logout | User is logged in | 1. Logout<br>2. Use browser Back button<br>3. Observe protected page | N/A | Protected information is not accessible after logout according to requirements | High |

---

## 4. Test Case Summary

| Category | Number of Test Cases |
|---|---:|
| Positive | 2 |
| Negative | 3 |
| Required Field Validation | 3 |
| Email Validation | 3 |
| Password | 3 |
| UI / Login Button | 3 |
| Successful Login / Session | 3 |
| Logout | 2 |
| **Total** | **22** |
