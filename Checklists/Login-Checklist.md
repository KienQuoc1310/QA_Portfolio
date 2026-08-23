# Login Testing Checklist

## 1. Login Page

- [ ] Login page is accessible.
- [ ] Login page loads correctly.
- [ ] Page title is correct.
- [ ] Username/email field is displayed.
- [ ] Password field is displayed.
- [ ] Login button is displayed.
- [ ] Forgot Password link is displayed when required.
- [ ] Register link is displayed when required.
- [ ] Password is masked.
- [ ] Field labels and placeholders are clear.
- [ ] Login form layout is correct.
- [ ] Login page works correctly on supported screen sizes.

---

## 2. Valid Login

- [ ] Valid username/email and valid password allow login.
- [ ] User is redirected to the expected page after successful login.
- [ ] Correct user information is displayed after login.
- [ ] User session is created successfully.
- [ ] Protected functionality becomes accessible after login.
- [ ] Login state remains active according to requirements.

---

## 3. Invalid Login

- [ ] Invalid username/email is rejected.
- [ ] Invalid password is rejected.
- [ ] Username/email and password combination is rejected when incorrect.
- [ ] Non-existent account is rejected.
- [ ] Empty username/email is rejected.
- [ ] Empty password is rejected.
- [ ] Both fields empty are rejected.
- [ ] Appropriate error messages are displayed.
- [ ] Error messages do not reveal sensitive authentication information.
- [ ] User is not logged in after failed authentication.

---

## 4. Input Validation

- [ ] Minimum username/email length is validated.
- [ ] Maximum username/email length is validated.
- [ ] Minimum password length is validated.
- [ ] Maximum password length is validated.
- [ ] Invalid email format is rejected when email is used.
- [ ] Leading and trailing spaces are handled according to requirements.
- [ ] Special characters are handled correctly.
- [ ] Unicode characters are handled according to requirements.
- [ ] Very long input is handled correctly.
- [ ] Empty input is handled correctly.
- [ ] Client-side validation works correctly.
- [ ] Server-side validation is enforced.

---

## 5. Password Behavior

- [ ] Password is masked by default.
- [ ] Show/Hide password functionality works when available.
- [ ] Password is not displayed in plain text unexpectedly.
- [ ] Password is not exposed in URL parameters.
- [ ] Password is not exposed in error messages.
- [ ] Password is not unintentionally retained after logout.
- [ ] Password field behaves correctly after failed login.

---

## 6. Authentication Security

- [ ] Protected pages cannot be accessed without authentication.
- [ ] Direct access to protected URLs is blocked when unauthenticated.
- [ ] Invalid credentials do not create a valid session.
- [ ] Session is created only after successful authentication.
- [ ] Logout invalidates the authenticated session.
- [ ] Expired sessions require authentication again.
- [ ] Authentication failures are handled according to security requirements.
- [ ] Account lockout or temporary blocking works when required.
- [ ] Login attempt limits work when required.
- [ ] CAPTCHA or additional verification works when required.

---

## 7. Authorization

- [ ] User can access features allowed for their role.
- [ ] User cannot access restricted features.
- [ ] User cannot access another user's account data.
- [ ] Admin functionality is protected.
- [ ] Restricted URLs cannot be accessed directly.
- [ ] Changing an object/resource ID does not expose another user's data.

---

## 8. Session Management

- [ ] Session is created after successful login.
- [ ] Session is not created after failed login.
- [ ] Session persists according to requirements.
- [ ] Session expires after the configured timeout.
- [ ] User is redirected to Login after session expiration when required.
- [ ] Logout invalidates the session.
- [ ] Protected pages cannot be accessed using an invalidated session.
- [ ] Browser Back button does not expose protected information after logout.
- [ ] Refresh behaves correctly while authenticated.
- [ ] Multiple tabs behave according to requirements.

---

## 9. Remember Me

- [ ] Remember Me option is displayed when available.
- [ ] Remember Me works when enabled.
- [ ] Login session behaves correctly when Remember Me is disabled.
- [ ] Remembered authentication expires according to requirements.
- [ ] Logout behaves correctly after Remember Me is used.
- [ ] Sensitive authentication information is not exposed.

---

## 10. Forgot Password

- [ ] Forgot Password link works.
- [ ] Registered email/account can request password reset.
- [ ] Unregistered email/account is handled correctly.
- [ ] Invalid email format is rejected.
- [ ] Password reset request generates the expected notification.
- [ ] Reset link works.
- [ ] Expired reset link is rejected.
- [ ] Already-used reset link is rejected.
- [ ] New password follows password requirements.
- [ ] Old password no longer works when required.
- [ ] New password works after reset.
- [ ] User can log in after successfully resetting the password.

---

## 11. Account Lockout / Failed Attempts

- [ ] Failed login attempts are counted correctly.
- [ ] Account is locked after the configured number of failures when required.
- [ ] Successful login resets failed-attempt state when required.
- [ ] Locked account cannot authenticate.
- [ ] Lockout duration is correct.
- [ ] User receives an appropriate message.
- [ ] Lockout behavior does not expose unnecessary account information.

---

## 12. Error Handling

- [ ] Login failure displays an appropriate message.
- [ ] Network failure is handled correctly.
- [ ] Server error is handled correctly.
- [ ] Timeout is handled correctly.
- [ ] User can retry login after a recoverable error.
- [ ] Loading state is displayed during authentication when appropriate.
- [ ] Login button cannot cause unintended duplicate submissions.
- [ ] Application does not enter an unexpected state after authentication failure.

---

## 13. Browser and Responsive Testing
- [ ] Login works on supported browsers.
- [ ] Login works on supported desktop screen sizes.
- [ ] Login works on supported mobile screen sizes.
- [ ] Keyboard navigation works.
- [ ] Tab order is logical.
- [ ] Enter key behavior is correct.
- [ ] Password input works correctly on mobile devices.
- [ ] Login controls remain usable on small screens.

---

## 14. Accessibility

- [ ] Username/email field has an accessible label.
- [ ] Password field has an accessible label.
- [ ] Login button has an accessible name.
- [ ] Keyboard users can complete login.
- [ ] Focus is visible.
- [ ] Validation errors can be identified clearly.
- [ ] Error messages are associated with the relevant fields when required.
- [ ] Color is not the only method used to communicate an error.

---

## 15. Security Smoke Checks

- [ ] HTTPS is used.
- [ ] Credentials are transmitted securely.
- [ ] Password is not exposed in the URL.
- [ ] Sensitive authentication data is not displayed in the UI.
- [ ] Authentication errors do not unnecessarily reveal whether an account exists.
- [ ] Protected resources require authentication.
- [ ] User cannot access another user's resources.
- [ ] Session is invalidated after logout.
- [ ] Basic malicious or unexpected input is handled safely.

---

## 16. Regression

- [ ] Successful login still works after changes.
- [ ] Invalid login still fails correctly.
- [ ] Logout still works.
- [ ] Session expiration still works.
- [ ] Forgot Password still works.
- [ ] Remember Me still works when available.
- [ ] Account lockout still works when required.
- [ ] Protected pages still require authentication.
- [ ] Authorization rules still work after authentication changes.
