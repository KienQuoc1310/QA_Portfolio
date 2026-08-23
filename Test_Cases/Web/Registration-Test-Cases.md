# Registration Test Cases

## 1. Test Case Information

| Item | Information |
|---|---|
| Module | User Registration |
| Application | E-commerce Web Application |
| Test Type | Functional / Negative / Validation / Boundary |
| Priority | High |
| Test Environment | Web |
| Related Test Plan | E-commerce-Test-Plan.md |

---

## 2. Test Scenarios

The following scenarios will be tested:

- Registration with valid information
- Registration with empty required fields
- Registration with invalid email format
- Registration with an existing email
- Registration with invalid password
- Registration with password below minimum length
- Registration with password above maximum length
- Registration with mismatched passwords
- Registration with valid matching passwords
- Form validation behavior
- Registration button behavior
- Successful registration behavior

---

## 3. Test Cases

### 3.1 Positive Test Cases

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-001 | Register with valid information | Registration page is available | 1. Open Registration page<br>2. Enter valid name<br>3. Enter valid email<br>4. Enter valid password<br>5. Enter matching confirmation password<br>6. Click Register | Valid registration data | Account is created successfully and the user receives the expected success result | High |
| TC-REG-002 | Register with valid data at supported field limits | Registration page is available | 1. Enter valid data within defined field limits<br>2. Submit registration | Valid boundary data | Registration is completed successfully when all inputs satisfy the defined requirements | High |

---

### 3.2 Required Field Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-003 | Register with all fields empty | Registration page is available | 1. Leave all fields empty<br>2. Click Register | All fields empty | Required field validation messages are displayed and registration is not completed | High |
| TC-REG-004 | Register with empty name | Registration page is available | 1. Leave name empty<br>2. Fill remaining fields with valid data<br>3. Click Register | Empty name | Name validation is displayed and registration is not completed | High |
| TC-REG-005 | Register with empty email | Registration page is available | 1. Leave email empty<br>2. Fill remaining fields with valid data<br>3. Click Register | Empty email | Email validation is displayed and registration is not completed | High |
| TC-REG-006 | Register with empty password | Registration page is available | 1. Leave password empty<br>2. Fill remaining fields with valid data<br>3. Click Register | Empty password | Password validation is displayed and registration is not completed | High |
| TC-REG-007 | Register with empty confirm password | Registration page is available | 1. Leave confirm password empty<br>2. Fill remaining fields with valid data<br>3. Click Register | Empty confirmation password | Confirmation password validation is displayed and registration is not completed | High |

---

### 3.3 Email Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-008 | Register with invalid email format | Registration page is available | 1. Enter invalid email<br>2. Fill remaining fields with valid data<br>3. Click Register | `userexample.com` | Email format validation is displayed and registration is not completed | High |
| TC-REG-009 | Register with email without domain | Registration page is available | 1. Enter email without domain<br>2. Fill remaining fields with valid data<br>3. Click Register | `user@example` | Email validation is displayed | Medium |
| TC-REG-010 | Register with email containing spaces | Registration page is available | 1. Enter email containing spaces<br>2. Fill remaining fields with valid data<br>3. Click Register | `user @example.com` | Application handles the invalid email according to requirements | Medium |
| TC-REG-011 | Register with valid email format | Registration page is available | 1. Enter valid email<br>2. Fill remaining fields with valid data<br>3. Click Register | `test.user@example.com` | Email is accepted | Medium |

---

### 3.4 Password Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-012 | Register with password below minimum length | Registration page is available | 1. Enter password shorter than the defined minimum<br>2. Fill remaining fields with valid data<br>3. Click Register | Password below minimum length | Password validation is displayed and registration is not completed | High |
| TC-REG-013 | Register with password at minimum length | Registration page is available | 1. Enter password exactly at the minimum length<br>2. Fill remaining fields with valid data<br>3. Click Register | Password at minimum length | Password is accepted if it satisfies all password requirements | High |
| TC-REG-014 | Register with password above maximum length | Registration page is available | 1. Enter password longer than the defined maximum<br>2. Fill remaining fields with valid data<br>3. Click Register | Password above maximum length | Application rejects or restricts the password according to requirements | High |
| TC-REG-015 | Register with invalid password format | Registration page is available | 1. Enter password that does not satisfy password rules<br>2. Fill remaining fields with valid data<br>3. Click Register | Password violating defined rules | Password validation is displayed | High |

---

### 3.5 Confirm Password Validation
| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-016 | Register with matching password and confirmation | Registration page is available | 1. Enter valid password<br>2. Enter the same password in confirmation field<br>3. Fill remaining fields<br>4. Submit | Matching passwords | Password confirmation is accepted | High |
| TC-REG-017 | Register with mismatched passwords | Registration page is available | 1. Enter valid password<br>2. Enter different confirmation password<br>3. Fill remaining fields<br>4. Submit | Different passwords | Password mismatch validation is displayed and registration is not completed | High |
| TC-REG-018 | Change password after entering confirmation password | Registration page is available | 1. Enter password<br>2. Enter matching confirmation<br>3. Change the original password<br>4. Submit | Original password ≠ confirmation | Application detects the mismatch according to requirements | Medium |

---

### 3.6 Duplicate Account Testing

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-019 | Register with an existing email | Account already exists | 1. Open Registration page<br>2. Enter existing email<br>3. Enter valid remaining data<br>4. Click Register | Existing email | Registration is rejected and an appropriate message is displayed | High |
| TC-REG-020 | Register with a new email | Registration page is available | 1. Enter unused email<br>2. Enter valid remaining data<br>3. Click Register | New email | Registration is accepted if all requirements are satisfied | High |

---

### 3.7 Boundary Testing

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-021 | Name at minimum allowed length | Registration page is available | 1. Enter name at minimum length<br>2. Fill remaining fields<br>3. Submit | Boundary value | Name is accepted if it satisfies the requirement | Medium |
| TC-REG-022 | Name below minimum allowed length | Registration page is available | 1. Enter name below minimum length<br>2. Fill remaining fields<br>3. Submit | Boundary - 1 | Name validation is displayed | Medium |
| TC-REG-023 | Name at maximum allowed length | Registration page is available | 1. Enter name at maximum length<br>2. Fill remaining fields<br>3. Submit | Maximum boundary | Name is accepted if it satisfies the requirement | Medium |
| TC-REG-024 | Name above maximum allowed length | Registration page is available | 1. Enter name above maximum length<br>2. Fill remaining fields<br>3. Submit | Boundary + 1 | Application rejects or restricts the input according to requirements | Medium |

---

### 3.8 Form and UI Behavior

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-REG-025 | Verify password field masks entered characters | Registration page is available | 1. Click password field<br>2. Enter password | Valid password | Password characters are masked | Medium |
| TC-REG-026 | Verify registration button is visible | Registration page is available | Open Registration page | N/A | Register button is visible and usable | Medium |
| TC-REG-027 | Correct validation error and resubmit | Invalid registration data has been submitted | 1. Enter invalid data<br>2. Observe validation<br>3. Correct the invalid data<br>4. Submit again | Invalid then valid data | Validation is cleared or updated and registration can proceed | Medium |

---

## 4. Test Case Summary

| Category | Number of Test Cases |
|---|---:|
| Positive | 2 |
| Required Field Validation | 5 |
| Email Validation | 4 |
| Password Validation | 4 |
| Confirm Password | 3 |
| Duplicate Account | 2 |
| Boundary Testing | 4 |
| Form / UI | 3 |
| **Total** | **27** |
