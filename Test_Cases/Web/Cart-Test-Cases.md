# Cart Test Cases

## 1. Test Case Information

| Item | Information |
|---|---|
| Module | Shopping Cart |
| Application | E-commerce Web Application |
| Test Type | Functional / Negative / Boundary / Business Logic / Data Validation |
| Priority | High |
| Test Environment | Web |
| Related Test Plan | E-commerce-Test-Plan.md |

---

## 2. Test Scenarios

The following scenarios will be tested:

- Add a product to cart
- Add multiple products to cart
- Display product information in cart
- Update product quantity
- Increase product quantity
- Decrease product quantity
- Remove product from cart
- Calculate product subtotal
- Calculate cart total
- Handle invalid quantity
- Handle maximum available quantity
- Handle out-of-stock products
- Verify cart persistence
- Verify product information consistency
- Verify empty cart behavior

---

# 3. Test Cases

## 3.1 Add Product to Cart

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-001 | Add an available product to cart | Product is available | 1. Open product detail<br>2. Click Add to Cart<br>3. Open Cart | Available product | Product is added to the cart with the correct information | High |
| TC-CART-002 | Add multiple units of a product | Product is available | 1. Open product detail<br>2. Select quantity<br>3. Click Add to Cart | Product quantity > 1 | Product is added with the selected quantity | High |
| TC-CART-003 | Add multiple different products | Multiple products are available | 1. Add Product A<br>2. Return to product listing<br>3. Add Product B<br>4. Open Cart | Product A + Product B | Both products are displayed in the cart with correct information | High |
| TC-CART-004 | Add the same product again | Product already exists in cart | 1. Add Product A<br>2. Return to product page<br>3. Add Product A again<br>4. Open Cart | Same product | Cart handles the duplicate product according to requirements | High |

---

## 3.2 Cart Display

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-005 | Verify product name in cart | Product is in cart | 1. Open Cart | Existing product | Correct product name is displayed | High |
| TC-CART-006 | Verify product price in cart | Product is in cart | 1. Open Cart | Existing product | Correct product price is displayed | High |
| TC-CART-007 | Verify product quantity in cart | Product is in cart | 1. Open Cart | Existing product | Correct quantity is displayed | High |
| TC-CART-008 | Verify cart item subtotal | Product is in cart | 1. Open Cart | Product price + quantity | Subtotal is calculated correctly | High |
| TC-CART-009 | Verify empty cart | Cart contains no products | 1. Open Cart | Empty cart | Appropriate empty-cart state is displayed | Medium |

---

## 3.3 Quantity Management

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-010 | Increase product quantity by one | Product is in cart | 1. Open Cart<br>2. Increase quantity | Quantity = 1 | Quantity increases to 2 and subtotal/total are recalculated | High |
| TC-CART-011 | Decrease product quantity by one | Product quantity > 1 | 1. Open Cart<br>2. Decrease quantity | Quantity = 2 | Quantity decreases to 1 and subtotal/total are recalculated | High |
| TC-CART-012 | Set quantity to minimum allowed value | Product is in cart | 1. Update quantity | Minimum valid quantity | Quantity is accepted | High |
| TC-CART-013 | Set quantity below minimum | Product is in cart | 1. Enter quantity below minimum<br>2. Update cart | Quantity = 0 or below | Invalid quantity is rejected or handled according to requirements | High |
| TC-CART-014 | Set quantity above available stock | Product has limited stock | 1. Enter quantity greater than available stock<br>2. Update cart | Quantity > available stock | Application prevents or handles the invalid quantity correctly | High |
| TC-CART-015 | Set quantity to maximum available stock | Product has limited stock | 1. Enter quantity equal to available stock<br>2. Update cart | Quantity = available stock | Quantity is accepted if it satisfies requirements | High |

---

## 3.4 Quantity Input Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-016 | Enter decimal quantity | Product is in cart | 1. Enter decimal quantity<br>2. Update cart | `1.5` | Decimal quantity is rejected or handled according to requirements | Medium |
| TC-CART-017 | Enter negative quantity | Product is in cart | 1. Enter negative quantity<br>2. Update cart | `-1` | Negative quantity is rejected | High |
| TC-CART-018 | Enter non-numeric quantity | Product is in cart | 1. Enter text<br>2. Update cart | `abc` | Invalid input is rejected or handled correctly | High |
| TC-CART-019 | Enter very large quantity | Product is in cart | 1. Enter an extremely large quantity<br>2. Update cart | Large number | Application handles the value safely without breaking cart functionality | Medium |

---

## 3.5 Remove Product

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-020 | Remove a product from cart | Product is in cart | 1. Open Cart<br>2. Click Remove | Existing product | Product is removed from cart | High |
| TC-CART-021 | Remove one product from multiple products | Multiple products are in cart | 1. Open Cart<br>2. Remove Product A | Product A + Product B | Product A is removed while Product B remains | High |
| TC-CART-022 | Remove the last product | One product is in cart | 1. Click Remove | Existing product | Cart becomes empty and appropriate empty-cart state is displayed | High |

---

## 3.6 Price Calculation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-023 | Verify subtotal calculation | Product is in cart | 1. Note product price<br>2. Note quantity<br>3. Open Cart | Price × Quantity | Subtotal equals unit price multiplied by quantity | High |
| TC-CART-024 | Verify total for one product | One product is in cart | 1. Open Cart | Product price + quantity | Cart total is calculated correctly according to pricing rules | High |
| TC-CART-025 | Verify total for multiple products | Multiple products are in cart | 1. Open Cart<br>2. Calculate expected total manually | Multiple products | Cart total equals the sum of all applicable item subtotals and charges | High |
| TC-CART-026 | Verify total after quantity update | Product is in cart | 1. Record total<br>2. Change quantity<br>3. Observe total | Updated quantity | Cart total is recalculated correctly | High |
| TC-CART-027 | Verify total after removing product | Multiple products are in cart | 1. Record total<br>2. Remove one product | Multiple products | Cart total is recalculated correctly after removal | High |

---

## 3.7 Product Information Consistency

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-028 | Verify product name matches product page | Product is in cart | 1. Note product name on Product page<br>2. Open Cart | Existing product | Product name is consistent | High |
| TC-CART-029 | Verify product price matches product page | Product is in cart | 1. Note product price on Product page<br>2. Open Cart | Existing product | Price is consistent according to the applicable pricing rules | High |
| TC-CART-030 | Verify product image matches product page | Product is in cart | 1. Note product image<br>2. Open Cart | Existing product | Correct product image is displayed | Medium |

---

## 3.8 Stock and Availability

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-031 | Add out-of-stock product | Product is out of stock | 1. Open product detail<br>2. Attempt to add product | Out-of-stock product | Product cannot be added or application handles the action according to requirements | High |
| TC-CART-032 | Product becomes unavailable after being added to cart | Product was available when added | 1. Add product to cart<br>2. Make product unavailable<br>3. Open/update Cart | Product availability changes | Cart detects and handles the availability change correctly | High |
| TC-CART-033 | Stock is lower than cart quantity | Product stock is reduced after being added | 1. Add quantity greater than current stock<br>2. Update Cart | Quantity > available stock | Application prevents checkout/purchase or adjusts quantity according to requirements | High |

---

## 3.9 Cart Persistence

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-034 | Refresh cart page | Product is in cart | 1. Open Cart<br>2. Refresh page | Existing cart | Cart contents remain according to requirements | High |
| TC-CART-035 | Navigate away and return to cart | Product is in cart | 1. Open Cart<br>2. Navigate to another page<br>3. Return to Cart | Existing cart | Cart contents remain according to requirements | High |
| TC-CART-036 | Verify cart after login | Cart behavior supports authenticated users | 1. Login<br>2. Add product<br>3. Navigate away<br>4. Return to Cart | Registered user + product | Cart state is maintained according to requirements | High |

---

## 3.10 Cart Validation Before Checkout

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-CART-037 | Continue to checkout with valid cart | Cart contains valid products | 1. Open Cart<br>2. Click Checkout | Valid cart | User is allowed to proceed to Checkout | High |
| TC-CART-038 | Prevent checkout with invalid quantity | Cart contains invalid quantity |
