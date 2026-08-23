# Bug Lifecycle

```text
Bug Identified
      │
      ▼
Bug Reported
      │
      ▼
     Open
      │
      ▼
Assigned
      │
      ▼
In Progress
      │
      ▼
    Fixed
      │
      ▼
   Retest
      │
      ├───────────────┐
      │               │
    Pass             Fail
      │               │
      ▼               ▼
   Closed          Reopened
                      │
                      ▼
                  In Progress
```

## Bug Status

| Status | Description |
|---|---|
| Open | Bug has been reported and is waiting for investigation |
| Assigned | Bug has been assigned to a developer |
| In Progress | Developer is working on the bug |
| Fixed | Developer has implemented a fix |
| Retest | QA is verifying the fix |
| Closed | Fix has passed retesting |
| Reopened | Bug still exists after the fix |

## Related QA Activities

```text
Test Case
    ↓
Bug Found
    ↓
Bug Report
    ↓
Developer Fix
    ↓
Retest
    ↓
Regression Testing
    ↓
Close / Reopen
```
