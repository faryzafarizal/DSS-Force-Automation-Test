# DSS Force Portal Test Automation

A comprehensive end-to-end (E2E) automated testing suite for the **TM Force / MyForce Portal** built using **Robot Framework** and **SeleniumLibrary**. This project facilitates modular test execution across key portal modules, including User Authentication, Ticketing, Dashboards, Configurations, Audit Logs, and Reports.

---

## 🚀 Key Features

* **Keyword-Driven & Data-Driven Testing**: Promotes clean, reusable, and readable test steps.
* **Modular Page Object Design**: Separates locator variables, keyword functions, and test cases.
* **Dynamic Configurations**: Ability to dynamically set target browser, application URLs, and environment preferences.
* **Failure Troubleshooting**: Integrated screenshot capture automatically saved to the `Screenshots/` directory on test failures.
* **Rich HTML Reporting**: Produces interactive HTML logs and execution reports natively through Robot Framework.

---

## 📁 Repository Structure

```text
├── Configs/                   # Global configuration files
│   └── Settings.robot         # Selenium configuration, wait times, and browser preferences
├── TestCase/                  # Modular E2E test suite files
│   ├── AuditLogs/             # Device logs, session logs, ticket status logs, audit trails
│   ├── Configs/               # Settings/configuration module tests (SLA, Area Management, etc.)
│   ├── Dashboard/             # Executive summaries, team performance, and tracker tests
│   ├── Login/                 # Login verification (positive & negative test cases)
│   ├── Reports/               # Activity, contractor, performance, and summary reports
│   ├── Resources/             # Tenant resource management tests
│   └── Ticket/                # Ticket creation, list views, and activity lists
├── Resources/                 # Shared resources and utilities
│   ├── keywords/              # Reusable functional business keywords (LoginApp, TicketCreation, etc.)
│   ├── locators/              # Centralized web element selectors (locatorsdss.robot)
│   └── files/                 # Static files or assets needed for test execution
├── TestData/                  # Static and environment-specific test data variables
│   └── testdatadss.robot      # User credentials, test variables, and filter properties
├── All_Test_Cases.xlsx        # Excel spreadsheet tracking test scenario coverage
├── requirements.txt           # Python package dependencies
└── README.md                  # Project documentation
```

---

## ⚙️ Prerequisites

To run this test suite, you will need the following installed:

1. **Python 3.10+** (verified on Python 3.13)
2. **Google Chrome** (or your preferred web browser)
3. **ChromeDriver** matching your installed Google Chrome version

---

## 🛠️ Installation & Setup

1. **Clone the repository** (if not already done):
   ```bash
   git clone https://github.com/faryzafarizal/DSS-Force-Automation-Test.git
   cd DSS-Force-Automation-Test
   ```

2. **Create and Activate a Virtual Environment** (recommended):
   ```bash
   # Create virtual environment
   python3 -m venv .venv

   # Activate virtual environment (macOS/Linux)
   source .venv/bin/activate

   # Activate virtual environment (Windows Command Prompt)
   .venv\Scripts\activate.bat
   ```

3. **Install Dependencies**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

---

## 🏃 Running Tests

You can execute tests at various scopes:

### 1. Run the Entire Test Suite
To run all test cases in the project:
```bash
robot TestCase/
```

### 2. Run a Specific Module/Directory
To run all test suites within a specific module, e.g., the Login module:
```bash
robot TestCase/Login/
```

### 3. Run a Specific Test File
To run a single test suite:
```bash
robot TestCase/Login/LoginTest.robot
```

### 4. Run a Specific Test Case By Name
To run a specific test case within a file:
```bash
robot --test "Valid Login (Positive Scenario)" TestCase/Login/LoginTest.robot
```

### 5. Overriding Variables via Command Line
You can override variables defined in the code (e.g., target browser or URL) at runtime:
```bash
# Run tests on Firefox instead of the default Chrome browser
robot --variable BROWSER:firefox TestCase/Login/LoginTest.robot

# Run tests on a staging/development URL
robot --variable URL:https://staging.myforce.tmrnd.com.my TestCase/Login/LoginTest.robot
```

---

## 📊 Viewing Test Reports

Upon completing execution, Robot Framework generates three files in the root folder (or specified output directory):

* **`report.html`**: A high-level dashboard summarizing test results, execution metrics, stats by tags, and execution duration.
* **`log.html`**: A highly detailed hierarchical log showing every keyword executed, its status, and step-by-step logs.
* **`output.xml`**: Machine-readable XML format containing the raw test results (commonly used for CI/CD integrations).

### Failure Screenshots
If a test step fails, a screenshot of the browser is automatically captured and saved under the `Screenshots/` directory in the project root for diagnostic troubleshooting.
