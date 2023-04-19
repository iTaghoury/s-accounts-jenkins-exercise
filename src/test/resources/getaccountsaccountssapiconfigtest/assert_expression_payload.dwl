%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "accountID": "AC123",
    "name": "The first account"
  },
  {
    "accountID": "AC456",
    "name": "The second account"
  }
])