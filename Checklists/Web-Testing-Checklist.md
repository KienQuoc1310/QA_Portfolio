# Web Testing Checklist

## 1. Application Access

- [ ] Application URL is accessible.
- [ ] Application loads successfully.
- [ ] HTTPS is enabled.
- [ ] No unexpected browser security warning is displayed.
- [ ] Application loads correctly on supported browsers.
- [ ] Application handles unavailable or invalid URLs correctly.

---

## 2. Navigation

- [ ] Main navigation is displayed correctly.
- [ ] Navigation links lead to the correct pages.
- [ ] Browser Back button works correctly.
- [ ] Browser Forward button works correctly.
- [ ] Refresh does not cause unexpected behavior.
- [ ] Logo links to the expected page.
- [ ] Internal links do not lead to broken pages.
- [ ] External links open the expected destination.
- [ ] Breadcrumbs, if available, are correct.
- [ ] User can navigate between major application modules.

---

## 3. UI and Layout

- [ ] Page layout is displayed correctly.
- [ ] Text is readable.
- [ ] Buttons are displayed correctly.
- [ ] Input fields are displayed correctly.
- [ ] Images load correctly.
- [ ] Icons are displayed correctly.
- [ ] No overlapping elements are present.
- [ ] No unexpected horizontal scrolling is present.
- [ ] Error messages are displayed in the correct location.
- [ ] Required fields are visually identifiable.
- [ ] Disabled elements appear disabled.
- [ ] Loading indicators are displayed when appropriate.

---

## 4. Forms and Input Validation

- [ ] Required fields are validated.
- [ ] Optional fields accept valid input.
- [ ] Invalid input is rejected.
- [ ] Boundary values are handled correctly.
- [ ] Minimum length is validated.
- [ ] Maximum length is validated.
- [ ] Invalid characters are handled correctly.
- [ ] Leading and trailing spaces are handled correctly.
- [ ] Empty input is handled correctly.
- [ ] Duplicate input is handled according to requirements.
- [ ] Error messages are clear and relevant.
- [ ] Error messages disappear or update after correction.
- [ ] Form submission works with valid data.
- [ ] Form submission is prevented when required validation fails.
- [ ] Data is not unexpectedly lost after validation failure.

---

## 5. Authentication

- [ ] Valid credentials allow login.
- [ ] Invalid credentials are rejected.
- [ ] Empty username/email is validated.
- [ ] Empty password is validated.
- [ ] Password masking works correctly.
- [ ] Login error messages are appropriate.
- [ ] Logout works correctly.
- [ ] Protected pages cannot be accessed without authentication.
- [ ] Session remains active according to requirements.
- [ ] Session expires according to requirements.
- [ ] User cannot access another user's protected data.

---

## 6. Authorization

- [ ] Users can access only permitted features.
- [ ] Restricted pages cannot be accessed directly.
- [ ] Restricted actions are blocked.
- [ ] User roles are enforced correctly.
- [ ] Admin-only functionality is protected.
- [ ] Unauthorized API requests are rejected.
- [ ] Users cannot access another user's resources by changing an ID or URL.

---

## 7. Search

- [ ] Exact search works correctly.
- [ ] Partial search works correctly.
- [ ] Case sensitivity is handled according to requirements.
- [ ] Search with no result is handled correctly.
- [ ] Empty search is handled correctly.
- [ ] Search with spaces is handled correctly.
- [ ] Special characters are handled correctly.
- [ ] Search results are relevant.
- [ ] Search result count is correct.
- [ ] Search filters work correctly.
- [ ] Search sorting works correctly when available.
- [ ] Search pagination works correctly when available.

---

## 8. Product / Content

- [ ] Product/content information is displayed correctly.
- [ ] Product/content name is correct.
- [ ] Price is correct.
- [ ] Availability status is correct.
- [ ] Images correspond to the correct product/content.
- [ ] Product/content details are complete.
- [ ] Variations/options work correctly.
- [ ] Invalid or unavailable options cannot be selected.
- [ ] Product/content data remains consistent between pages.

---

## 9. Cart

- [ ] Product can be added to Cart.
- [ ] Correct product is added.
- [ ] Correct quantity is displayed.
- [ ] Quantity can be updated.
- [ ] Quantity cannot exceed allowed limits.
- [ ] Minimum quantity is enforced.
- [ ] Product can be removed.
- [ ] Cart subtotal is calculated correctly.
- [ ] Discounts are calculated correctly.
- [ ] Cart total is calculated correctly.
- [ ] Cart data persists according to requirements.
- [ ] Cart handles unavailable products correctly.
- [ ] Cart handles changed product prices correctly.
- [ ] Cart data remains consistent with Checkout.

---

## 10. Checkout

- [ ] User can proceed to Checkout with valid Cart data.
- [ ] Required customer information is validated.
- [ ] Shipping information is validated.
- [ ] Shipping method can be selected.
- [ ] Payment method can be selected.
- [ ] Order summary is correct.
- [ ] Product information is correct.
- [ ] Quantity is correct.
- [ ] Price is correct.
- [ ] Discount is correct.
- [ ] Shipping fee is correct.
- [ ] Tax is correct when applicable.
- [ ] Final total is correct.
- [ ] Invalid Checkout data is rejected.
- [ ] Order cannot be submitted with invalid required data.
- [ ] Successful Checkout creates the expected Order.
- [ ] Failed payment does not incorrectly confirm the Order.

---

## 11. Payment

- [ ] Valid payment succeeds.
- [ ] Failed payment is handled correctly.
- [ ] Cancelled payment is handled correctly.
- [ ] Payment timeout is handled correctly.
- [ ] Duplicate payment submission is handled correctly.
- [ ] Payment status is displayed correctly.
- [ ] Order status reflects the correct payment result.
- [ ] Payment failure does not create an incorrectly confirmed Order.
- [ ] Payment retry works according to requirements.

---

## 12. Error Handling

- [ ] Application displays appropriate error messages.
- [ ] Invalid requests are handled gracefully.
- [ ] Server errors do not expose sensitive information.
- [ ] Network interruption is handled appropriately.
- [ ] Timeout scenarios are handled appropriately.
- [ ] User can recover from recoverable errors.
- [ ] Application does not enter an unexpected state after an error.
- [ ] Error messages are understandable to users.

---

## 13. Data Consistency

- [ ] Data remains consistent between related pages.
- [ ] Product information is consistent between Product, Cart, and Checkout.
- [ ] Quantity remains consistent between Cart and Checkout.
- [ ] Price remains consistent according to business rules.
- [ ] Order total matches Checkout total.
- [ ] Payment status matches the actual payment result.
- [ ] Order status matches the payment state.
- [ ] User information is displayed consistently.
- [ ] Updated data is reflected where expected.
- [ ] Deleted data is no longer displayed where it should not be.

---

## 14. Session and Browser Behavior

- [ ] Refresh behaves correctly.
- [ ] Back navigation behaves correctly.
- [ ] Forward navigation behaves correctly.
- [ ] Multiple tabs are handled correctly.
- [ ] Session expiration is handled correctly.
- [ ] Logout invalidates the session according to requirements.
- [ ] Sensitive pages are not incorrectly accessible through browser history.
- [ ] Browser storage is handled correctly.

---

## 15. Responsive Web Testing

- [ ] Desktop layout works correctly.
- [ ] Tablet layout works correctly.
- [ ] Mobile browser layout works correctly.
- [ ] Navigation adapts correctly.
- [ ] Text remains readable.
- [ ] Buttons remain usable.
- [ ] Forms remain usable.
- [ ] Images scale correctly.
- [ ] No important content is cut off.
- [ ] No unexpected horizontal scrolling occurs.

---

## 16. Compatibility

- [ ] Chrome works correctly.
- [ ] Firefox works correctly.
- [ ] Edge works correctly.
- [ ] Safari works correctly when supported.
- [ ] Supported operating systems behave correctly.
- [ ] Application behavior is consistent across supported browsers.

---

## 17. Accessibility

- [ ] Keyboard navigation works.
- [ ] Focus is visible.
- [ ] Form fields have appropriate labels.
- [ ] Images have appropriate alternative text when required.
- [ ] Buttons have understandable names.
- [ ] Color is not the only method used to communicate important information.
- [ ] Error messages can be identified by assistive technologies when required.
- [ ] Page structure is understandable.

---

## 18. Basic Security Checks

- [ ] Authentication is required for protected functionality.
- [ ] Authorization is enforced.
- [ ] Sensitive information is not exposed in the UI.
- [ ] Passwords are not displayed in plain text.
- [ ] Logout invalidates the session appropriately.
- [ ] Users cannot access another user's resources.
- [ ] Input fields handle unexpected input safely.
- [ ] Application does not expose sensitive information in error messages.

---

## 19. Performance Smoke Checks
- [ ] Main pages load within the expected time.
- [ ] Navigation does not become unexpectedly slow.
- [ ] Search responds within the expected time.
- [ ] Cart operations respond within the expected time.
- [ ] Checkout responds within the expected time.
- [ ] Loading indicators appear for long-running operations.
- [ ] Application remains usable during normal operations.

---

## 20. Regression Checklist

- [ ] Previously fixed bugs are retested.
- [ ] Related functionality is tested after a fix.
- [ ] Critical user flows are executed.
- [ ] Login flow is verified.
- [ ] Product flow is verified.
- [ ] Cart flow is verified.
- [ ] Checkout flow is verified.
- [ ] Payment flow is verified.
- [ ] Order flow is verified.
- [ ] No new critical regression is identified.

---

## 21. Evidence

For failed checks:

- [ ] Screenshot captured.
- [ ] Screen recording captured when necessary.
- [ ] Test data recorded.
- [ ] Environment recorded.
- [ ] Browser and version recorded.
- [ ] Steps to reproduce recorded.
- [ ] Related Test Case identified.
- [ ] Related Bug ID identified.
