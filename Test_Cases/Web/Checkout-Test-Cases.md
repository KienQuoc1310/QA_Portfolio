# Checkout Test Cases

## 1. Test Case Information

| Item | Information |
|---|---|
| Module | Checkout |
| Application | E-commerce Web Application |
| Test Type | Functional / Negative / Boundary / Business Logic / E2E |
| Priority | Critical |
| Test Environment | Web |
| Related Test Plan | E-commerce-Test-Plan.md |

---

## 2. Test Scenarios

The following scenarios will be tested:

- Access checkout with a valid cart
- Access checkout with an empty cart
- Enter valid customer information
- Validate required customer information
- Validate shipping information
- Select shipping method
- Verify order summary
- Verify product information
- Verify quantity
- Verify subtotal
- Verify shipping fee
- Verify discount
- Verify total
- Select payment method
- Validate payment information
- Submit order
- Verify successful order creation
- Handle payment failure
- Handle invalid checkout information
- Prevent duplicate order submission
- Recover from checkout failure

---

# 3. Test Cases

## 3.1 Checkout Access

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-001 | Access checkout with valid cart | Cart contains valid product | 1. Open Cart<br>2. Click Checkout | Valid cart | Checkout page is displayed successfully | Critical |
| TC-CHK-002 | Access checkout with empty cart | Cart is empty | 1. Open Cart<br>2. Attempt to access Checkout | Empty cart | Checkout is prevented or handled according to requirements | High |
| TC-CHK-003 | Verify cart products are displayed in checkout | Cart contains products | 1. Open Checkout | Existing cart | Checkout displays the correct products from Cart | Critical |

---

## 3.2 Customer Information

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-004 | Enter valid customer information | Checkout page is open | 1. Enter valid customer information | Valid data | Information is accepted | High |
| TC-CHK-005 | Submit checkout with empty customer name | Checkout page is open | 1. Leave name empty<br>2. Fill remaining required fields<br>3. Submit | Empty name | Validation message is displayed and checkout cannot proceed | High |
| TC-CHK-006 | Submit checkout with empty phone number | Checkout page is open | 1. Leave phone empty<br>2. Fill remaining required fields<br>3. Submit | Empty phone | Validation message is displayed | High |
| TC-CHK-007 | Submit checkout with invalid phone number | Checkout page is open | 1. Enter invalid phone<br>2. Fill remaining fields<br>3. Submit | Invalid phone | Phone validation is displayed | High |
| TC-CHK-008 | Submit checkout with empty email | Checkout page is open | 1. Leave email empty<br>2. Fill remaining fields<br>3. Submit | Empty email | Email validation is displayed | High |
| TC-CHK-009 | Submit checkout with invalid email | Checkout page is open | 1. Enter invalid email<br>2. Fill remaining fields<br>3. Submit | Invalid email | Email validation is displayed | High |

---

## 3.3 Shipping Information

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-010 | Enter valid shipping address | Checkout page is open | 1. Enter valid address | Valid address | Address is accepted | High |
| TC-CHK-011 | Submit checkout with missing address | Checkout page is open | 1. Leave required address field empty<br>2. Submit | Missing address | Address validation is displayed | High |
| TC-CHK-012 | Enter address at maximum supported length | Checkout page is open | 1. Enter address at maximum length | Boundary value | Address is accepted if valid | Medium |
| TC-CHK-013 | Enter address above maximum supported length | Checkout page is open | 1. Enter address above maximum length | Boundary + 1 | Application rejects or restricts the input according to requirements | Medium |

---

## 3.4 Shipping Method

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-014 | Select available shipping method | Shipping methods are available | 1. Select a shipping method | Standard shipping | Method is selected successfully | High |
| TC-CHK-015 | Change shipping method | Multiple shipping methods are available | 1. Select Method A<br>2. Select Method B | Multiple methods | Selected method changes and applicable shipping fee is updated | High |
| TC-CHK-016 | Verify shipping fee | Shipping method is selected | 1. Select shipping method<br>2. Check order summary | Known shipping fee | Correct shipping fee is displayed | High |

---

## 3.5 Order Summary

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-017 | Verify product name in order summary | Cart contains product | 1. Open Checkout | Existing product | Correct product name is displayed | High |
| TC-CHK-018 | Verify product quantity in order summary | Cart contains product | 1. Open Checkout | Existing quantity | Correct quantity is displayed | High |
| TC-CHK-019 | Verify product price in order summary | Cart contains product | 1. Open Checkout | Existing product | Correct applicable price is displayed | High |
| TC-CHK-020 | Verify subtotal in order summary | Cart contains product | 1. Open Checkout | Known product price and quantity | Subtotal matches expected calculation | Critical |
| TC-CHK-021 | Verify shipping fee in order summary | Shipping method selected | 1. Open Checkout | Known shipping fee | Correct shipping fee is displayed | High |
| TC-CHK-022 | Verify discount in order summary | Valid discount applies | 1. Apply valid discount<br>2. Check summary | Valid discount | Correct discount is displayed | High |
| TC-CHK-023 | Verify final total | Order has valid pricing information | 1. Review order summary | Known pricing data | Final total matches the defined pricing formula | Critical |

---

## 3.6 Discount Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-024 | Apply valid discount code | Valid discount exists | 1. Enter discount code<br>2. Apply | Valid code | Discount is applied correctly | High |
| TC-CHK-025 | Apply invalid discount code | Checkout page is open | 1. Enter invalid code<br>2. Apply | Invalid code | Discount is rejected and appropriate message is displayed | High |
| TC-CHK-026 | Apply expired discount code | Expired discount exists | 1. Enter expired code<br>2. Apply | Expired code | Discount is rejected | High |
| TC-CHK-027 | Apply discount below minimum order value | Discount has minimum order requirement | 1. Enter qualifying discount code<br>2. Cart total is below required amount<br>3. Apply | Below minimum order value | Discount is rejected or not applied according to requirements | High |

---

## 3.7 Payment Method

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-028 | Select available payment method | Payment methods are available | 1. Select payment method | Available method | Payment method is selected | Critical |
| TC-CHK-029 | Change payment method | Multiple payment methods are available | 1. Select Method A<br>2. Select Method B | Multiple methods | Selected payment method changes correctly | High |
| TC-CHK-030 | Continue with supported payment method | Valid checkout information exists | 1. Select supported method<br>2. Continue | Valid payment method | User can proceed to order submission/payment | Critical |

---

## 3.8 Payment Validation and Failure

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-031 | Submit with invalid payment information | Payment requires additional information | 1. Enter invalid payment information<br>2. Submit | Invalid payment data | Payment validation/error is displayed | Critical |
| TC-CHK-032 | Handle payment failure | Payment provider returns failure | 1. Submit valid order<br>2. Simulate/receive payment failure | Failed payment | Order is not incorrectly marked as paid and user receives appropriate failure information | Critical |
| TC-CHK-033 | Retry after payment failure | Previous payment attempt failed | 1. Correct payment issue<br>2. Retry payment | Valid payment information | Payment can be retried according to requirements | High |

---

## 3.9 Order Submission

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-034 | Submit order with valid information | Cart, customer, shipping and payment information are valid | 1. Review order<br>2. Submit order | Valid complete order | Order is created successfully | Critical |
| TC-CHK-035 | Prevent submission with missing required information | Required checkout data is missing | 1. Leave required field empty<br>2. Submit | Missing data | Order is not created and validation is displayed | Critical |
| TC-CHK-036 | Prevent duplicate order submission | Valid checkout data exists | 1. Click Submit Order multiple times quickly | Same order | System prevents duplicate order creation | Critical |
| TC-CHK-037 | Verify order confirmation | Order was successfully created | 1. Complete order submission | Valid order | Order confirmation is displayed with the correct order information | Critical |

---

## 3.10 End-to-End Checkout

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CHK-038 | Complete successful purchase flow | Product is available | 1. Open Product<br>2. Add product to Cart<br>3. Open Cart<br>4. Checkout<br>5. Enter customer information<br>6. Enter shipping information<br>7. Select shipping method<br>8. Select payment method<br>9. Submit order | Valid complete order |
