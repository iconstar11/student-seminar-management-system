# 🎓 Student Seminar Management System (Business Central AL)

A complete ERP-style mini-system built in **AL language** for **Microsoft Dynamics 365 Business Central**.  
This project simulates a real-world workflow — from master data management to registration, approvals, and reporting.

---

##  Overview

The system manages:
- Seminar creation, approval, and capacity tracking
- Student records and registration
- Approval workflow: Pending → Approved → Rejected
- Automatic validations (e.g. no overbooking)
- Real-time reporting: registered students by seminar

---

##  Technologies Used

- AL Language (VS Code + AL Extension)
- Microsoft Dynamics 365 Business Central
- Based on learning from:
  - *Navision 4.0 - Course 8401A*
  - *D365 for Dummies*
  - *Using D365 Finance & Operations*

---

## Features

- 🔹 Seminar & Student master tables
- 🔹 Auto-fill City/Post Code from Post Code table
- 🔹 Registration table with SubPageLink to Seminar
- 🔹 Triggers: `OnInsert`, `OnValidate`, `OnAction`, `OnOpenPage`
- 🔹 Business logic:
  - Prevent double registration
  - Prevent overbooking
  - Approve/Reject logic with status-controlled buttons
- 🔹 Styled UI with colored approval badges
- 🔹 Reports:
  - Filter seminars by status/date
  - Show registered count

---

## Learning Outcomes

- Understanding AL page, table, and report objects
- Designing parent-child relationships using `SubPageLink`
- Implementing status-driven workflows
- Using `StyleExpr`, `User Group Member`, and filtering logic
- Creating structured, ERP-style business rules


---

##  Future Improvements

- [ ] Refactor using codeunits for business logic
- [ ] Email notification on approval
- [ ] Export report as PDF
- [ ] Add audit trail or change log table
- [ ] User role control with Permission Sets

---

## 🙋‍♂️ Author

**[@iconstar11](https://github.com/iconstar11)**  
Computer Science Intern | ERP + Business Central Enthusiast  


---

