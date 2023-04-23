var reporter = require('cucumber-html-reporter');

var options = {
    theme: 'bootstrap',
    jsonFile: './integration_test/gherkin/reports/report.json',
    output: './cucumber_report.html',
    reportSuiteAsScenarios: true,
    scenarioTimestamp: true,
    launchReport: true,
    metadata: {
        "App Version": "1.0.0",
        "Test Environment": "STAGING",
        "Platform": "MacOS 13.2.1",
        "Parallel": "Scenarios",
        "Executed": "Remote"
    }
};

reporter.generate(options);