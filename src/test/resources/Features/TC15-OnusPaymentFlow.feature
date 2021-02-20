#Author: Suvarna
Feature: Onus Payment flow feature

  @TC_15_01_PositiveOnusPaymentFlow
  Scenario Outline: Onus Payment flow (check amount>x)
    Then To check whether Cheque data entry move to QueuedToPayment status using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment move to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheckApprove using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToFinalPosting using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000210 |               |
      
      @TC_15_02_PositiveOnusPaymentFlow
  Scenario Outline: Onus Payment flow (check amount<x)
    Then To check whether Cheque data entry move to QueuedToPayment status using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment move to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToFinalPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000211 |               |  

	@TC_15_03_OnusReturnpaymentflow
  Scenario Outline: Onus Return Payment flow
    Then To check whether Cheque data entry move to QueuedToPayment status using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment move to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheckApprove after gets rejected from SignatureCheck queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ReasonCode1>","<ReasonCode2>","<ReasonCode3>","<ReasonCode4>","<ReasonCode5>","<ReasonCode6>","<ReasonCode7>","<ReasonCode8>","<ReasonCode9>","<ReasonCode10>","<ReasonCode11>","<ReasonCode12>","<ReasonCode13>","<ReasonCode14>","<ReasonCode15>"
    Then check whether payment move to SignatureCheck status after gets rejected from SignatureCheckApprove queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<Reason>"
    Then check whether payment move to SignatureCheckApprove after gets rejected from SignatureCheck queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ReasonCode1>","<ReasonCode2>","<ReasonCode3>","<ReasonCode4>","<ReasonCode5>","<ReasonCode6>","<ReasonCode7>","<ReasonCode8>","<ReasonCode9>","<ReasonCode10>","<ReasonCode11>","<ReasonCode12>","<ReasonCode13>","<ReasonCode14>","<ReasonCode15>"
    Then check whether payment move to QueuedToFinalPosting using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Returned using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber | ReasonCode1           | ReasonCode2          | ReasonCode3              | ReasonCode4             | ReasonCode5            | ReasonCode6     | ReasonCode7              | ReasonCode8                 | ReasonCode9   | ReasonCode10              | ReasonCode11  | ReasonCode12        | ReasonCode13                 | ReasonCode14                         | ReasonCode15                   | Reason |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000212 |     | 01-Stop Payment Check | 02-Insufficient Fund | 04-The Account is closed | 05-Un-matched signature | 07-Un-endorsable check | 08-Missing date | 09-Presented before date | 10-Un-Authorized alteration | 11-Giro error | 14-Missing Clearing Stamp | 16-Wrong Date | 17-Collateral Check | 18-Witness Signature Missing | 15-Amount Numbers and Words mismatch | 23-Crossed check un-compliance | Return  |

	@TC_15_09_OnusPaymentflowwithExceptionfromQueuedToInitialPosting
  Scenario Outline: Onus Payment flow with Exception from QueuedToInitialPosting (check amount>x)
  	Then To check whether Cheque data entry move to QueuedToPayment status using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment move to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Exception status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Exception to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to SignatureCheck from Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to SignatureCheckApprove using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToFinalPosting using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000213 |               |

     #@TC_15_10_OnusPaymentPDCDeleteflow 
      #Scenario Outline: Inward Payment PDC Delete flow
    #Then To check whether Cheque data entry move to QueuedToPayment using "<ChequeNo>","<AccountNumber>"
    #Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    #Then disable Cheque_Outward_Payment_Creation_Server
    #Then check whether payment move to Future status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Approve status from PDC>>Delete using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to QueuedToDeletePDC status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Delete status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #
    #Examples: 
      #| ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      #|                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 37020260 |               |
      
       #@TC_15_11_OnusPaymentPDCModifyFlow 
      #Scenario Outline: Inward Payment PDC Modify flow
    #Then To check whether Cheque data entry move to QueuedToPayment using "<ChequeNo>","<AccountNumber>"
    #Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    #Then disable Cheque_Outward_Payment_Creation_Server
    #Then check whether payment move to Future status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Approve status from PDC>>Modify using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<PayerBIC>"
    #Then check whether payment move to QueuedToPDCAmendment status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Future status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #
     #Examples: 
      #| ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |PayerBIC|
      #|                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 37020254 |               |TNBCPS20001|
      
      
      
