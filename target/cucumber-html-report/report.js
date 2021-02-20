$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/Features/TC15-OnusPaymentFlow1.feature");
formatter.feature({
  "name": "Onus Payment flow feature",
  "description": "",
  "keyword": "Feature"
});
formatter.scenarioOutline({
  "name": "Onus Duplicate Payment flow(check amount\u003ex)",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@TC_15_05_OnusDuplicateCheque"
    }
  ]
});
formatter.step({
  "name": "To check whether Cheque data entry move to QueuedToPayment status using \"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "To check whether Cheque data entry gets Completed using \"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "disable Cheque_Outward_Payment_Creation_Server",
  "keyword": "Then "
});
formatter.step({
  "name": "To check whether Onus Payment is duplicate using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "To validate list displayed for duplicate cheques using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "check whether payment move to QueuedToAccountVerification and then to Approve status using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\",\"\u003cgpkey\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "check whether payment move to QueuedToInitialPosting status using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "check whether payment move to SignatureCheck status using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "check whether payment move to SignatureCheckApprove using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "check whether payment move to QueuedToFinalPosting using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "check whether payment move to Completed status using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "ValueDateperiod",
        "PaymentType",
        "Reference",
        "SubRef",
        "ChequeNo",
        "AccountNumber"
      ]
    },
    {
      "cells": [
        "",
        "INTERNAL CHEQUE",
        "Cheque No",
        "EQUAL",
        "30000211",
        ""
      ]
    }
  ]
});
formatter.scenario({
  "name": "Onus Duplicate Payment flow(check amount\u003ex)",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@TC_15_05_OnusDuplicateCheque"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "To check whether Cheque data entry move to QueuedToPayment status using \"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.to_check_whether_Cheque_data_entry_move_to_QueuedToPayment_status_using(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "To check whether Cheque data entry gets Completed using \"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.to_check_whether_Cheque_data_entry_gets_Completed_using(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "disable Cheque_Outward_Payment_Creation_Server",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.disable_Cheque_Outward_Payment_Creation_Server()"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "To check whether Onus Payment is duplicate using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.to_check_whether_Onus_Payment_is_duplicate_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "To validate list displayed for duplicate cheques using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.to_validate_list_displayed_for_duplicate_cheques_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "check whether payment move to QueuedToAccountVerification and then to Approve status using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\",\"\u003cgpkey\u003e\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.check_whether_payment_move_to_QueuedToAccountVerification_and_then_to_Approve_status_using(String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "check whether payment move to QueuedToInitialPosting status using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.check_whether_payment_move_to_QueuedToInitialPosting_status_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "check whether payment move to SignatureCheck status using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.check_whether_payment_move_to_SignatureCheck_status_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "check whether payment move to SignatureCheckApprove using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.check_whether_payment_move_to_SignatureCheckApprove_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "check whether payment move to QueuedToFinalPosting using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.check_whether_payment_move_to_QueuedToFinalPosting_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "check whether payment move to Completed status using \"\",\"INTERNAL CHEQUE\",\"Cheque No\",\"EQUAL\",\"30000211\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "OnusPaymentFlowStepDefinition.check_whether_payment_move_to_Completed_status_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});