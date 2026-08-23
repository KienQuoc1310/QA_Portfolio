# Product Test Cases

## 1. Test Case Information

| Item | Information |
|---|---|
| Module | Product |
| Application | E-commerce Web Application |
| Test Type | Functional / Negative / Boundary / Data Validation |
| Priority | High |
| Test Environment | Web |
| Related Test Plan | E-commerce-Test-Plan.md |

---

## 2. Test Scenarios

The following scenarios will be tested:

- Verify product listing
- Verify product information
- Search for products
- Search with invalid or empty keywords
- Filter products
- Combine multiple filters
- Sort products
- View product details
- Verify product price
- Verify product availability
- Navigate between product listing and product detail
- Verify product information consistency

---

# 3. Test Cases

## 3.1 Product Listing

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-001 | Verify product listing page loads successfully | Product data exists | 1. Open product listing page | N/A | Product listing page loads successfully and products are displayed | High |
| TC-PROD-002 | Verify product card information | Product listing is available | 1. Open product listing<br>2. Inspect a product card | Existing product | Product card displays required product information | High |
| TC-PROD-003 | Verify multiple products are displayed | Multiple products exist | 1. Open product listing | N/A | Available products are displayed according to requirements | Medium |
| TC-PROD-004 | Navigate to product details from product card | Product listing is available | 1. Click a product | Existing product | User is redirected to the corresponding product detail page | High |

---

## 3.2 Product Search

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-005 | Search using exact product name | Product exists | 1. Enter product name<br>2. Submit search | Existing product name | Matching product is displayed | High |
| TC-PROD-006 | Search using partial product name | Product exists | 1. Enter part of product name<br>2. Submit search | Partial product name | Relevant matching products are displayed according to requirements | High |
| TC-PROD-007 | Search using product keyword | Matching products exist | 1. Enter product keyword<br>2. Submit search | Product keyword | Relevant products are displayed | High |
| TC-PROD-008 | Search using case variation | Product exists | 1. Search using different letter case | Product keyword with different case | Search behavior follows the defined case-sensitivity requirement | Medium |
| TC-PROD-009 | Search for non-existing product | Search page available | 1. Enter keyword with no matching product<br>2. Submit search | `NonExistingProduct123` | No-result state is displayed correctly | High |
| TC-PROD-010 | Search with empty keyword | Search page available | 1. Leave search field empty<br>2. Submit search | Empty input | Application handles empty search according to requirements | Medium |

---

## 3.3 Search Input Validation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-011 | Search with leading spaces | Search page available | 1. Enter keyword with leading spaces<br>2. Submit search | `  laptop` | Application handles leading spaces according to requirements | Medium |
| TC-PROD-012 | Search with trailing spaces | Search page available | 1. Enter keyword with trailing spaces<br>2. Submit search | `laptop  ` | Application handles trailing spaces according to requirements | Medium |
| TC-PROD-013 | Search with special characters | Search page available | 1. Enter special characters<br>2. Submit search | `@#$%` | Application handles the input safely and displays the expected result | Medium |
| TC-PROD-014 | Search using very long keyword | Search page available | 1. Enter a keyword exceeding the supported input length<br>2. Submit search | Long input | Application handles the input according to requirements without breaking the page | Medium |

---

## 3.4 Product Filter

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-015 | Filter products by category | Products exist in multiple categories | 1. Select a category | Existing category | Only products belonging to the selected category are displayed | High |
| TC-PROD-016 | Filter products by price range | Products with different prices exist | 1. Select or enter a price range | Valid price range | Products within the selected price range are displayed | High |
| TC-PROD-017 | Filter with no matching products | Product data exists | 1. Apply filter that matches no products | No-match filter | No-result state is displayed correctly | Medium |
| TC-PROD-018 | Clear applied filters | Filters are applied | 1. Apply filter<br>2. Click Clear/Reset | Existing filter | Filters are removed and the product listing returns to the expected state | High |
| TC-PROD-019 | Apply multiple filters | Multiple filter options exist | 1. Select category<br>2. Apply price range | Valid category + valid price range | Results satisfy all selected filter conditions | High |

---

## 3.5 Product Sorting

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-020 | Sort products by price ascending | Multiple products with different prices exist | 1. Select price ascending | N/A | Products are displayed from lowest to highest price | High |
| TC-PROD-021 | Sort products by price descending | Multiple products with different prices exist | 1. Select price descending | N/A | Products are displayed from highest to lowest price | High |
| TC-PROD-022 | Sort products by name ascending | Multiple products exist | 1. Select name ascending | N/A | Products are displayed in the expected alphabetical order | Medium |
| TC-PROD-023 | Sort products by name descending | Multiple products exist | 1. Select name descending | N/A | Products are displayed in reverse alphabetical order | Medium |

---

## 3.6 Product Details

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-024 | Verify product name | Product exists | 1. Open product detail page | Existing product | Correct product name is displayed | High |
| TC-PROD-025 | Verify product price | Product exists | 1. Open product detail page | Existing product | Correct product price is displayed | High |
| TC-PROD-026 | Verify product description | Product has description | 1. Open product detail page | Existing product | Correct product description is displayed | Medium |
| TC-PROD-027 | Verify product image | Product has image | 1. Open product detail page | Existing product | Correct product image is displayed | Medium |
| TC-PROD-028 | Verify product information matches listing | Product exists | 1. Note product information from listing<br>2. Open product detail page<br>3. Compare information | Existing product | Product information is consistent between listing and detail page | High |

---

## 3.7 Product Availability

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-029 | Verify available product status | Product is in stock | 1. Open product detail page | In-stock product | Product is displayed as available and can proceed according to requirements | High |
| TC-PROD-030 | Verify out-of-stock product status | Product is out of stock | 1. Open product detail page | Out-of-stock product | Product is clearly identified as unavailable | High |
| TC-PROD-031 | Verify out-of-stock product cannot be purchased | Product is out of stock | 1. Open product detail page<br>2. Attempt to purchase/add to cart | Out-of-stock product | Purchase/add-to-cart action is disabled or handled according to requirements | High |

---

## 3.8 Navigation

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-032 | Navigate from product detail back to listing | Product detail page is open | 1. Click Back / Product Listing | N/A | User returns to the expected product listing | Medium |
| TC-PROD-033 | Open product detail from search result | Search result exists | 1. Search for a product<br>2. Click the result | Existing product | Correct product detail page is opened | High |
| TC-PROD-034 | Verify product URL identifies the correct product | Product detail page is open | 1. Inspect product URL | Existing product | URL identifies or routes to the correct product according to requirements | Medium |

---
## 3.9 Product Data Consistency

| TC ID | Test Case | Preconditions | Test Steps | Test Data | Expected Result | Priority |
|---|---|---|---|---|---|---|
| TC-PROD-035 | Verify product price consistency | Product exists | 1. Record price on listing<br>2. Open product detail<br>3. Compare price | Existing product | Product price is consistent across pages | High |
| TC-PROD-036 | Verify product availability consistency | Product exists | 1. Check availability on listing<br>2. Open product detail | Existing product | Availability information is consistent | High |
| TC-PROD-037 | Verify product name consistency | Product exists | 1. Check product name on listing<br>2. Open detail page | Existing product | Product name is consistent | Medium |

---

# 4. Test Case Summary

| Category | Number of Test Cases |
|---|---:|
| Product Listing | 4 |
| Product Search | 6 |
| Search Input Validation | 4 |
| Product Filter | 5 |
| Product Sorting | 4 |
| Product Details | 5 |
| Product Availability | 3 |
| Navigation | 3 |
| Data Consistency | 3 |
| **Total** | **37** |
