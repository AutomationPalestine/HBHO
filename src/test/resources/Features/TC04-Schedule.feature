#Author: Suvarna
Feature: Schedule feature

  @TC_04_01_ControlScheduler
  Scenario: To check Scheduler control
    Then User goes Maintenance and open Schedule Control menu
    Then User Activate the Scheduler Service

  @TC_04_02_ListSchedulerswithInvalidcriteria
  Scenario: To List Scheduler with Invalid criteria
    Then User goes Maintenance and open Schedule List menu
    Then User list the Scheduler

  @TC_04_03_AddNewSchedulerwithInvaliddata
  Scenario: To Add Scheduler with Invalid data
    Then User goes Maintenance and open Schedule New menu
    Then User add "Scheduler" with invalid StartTime
      | EGPS_CHEQUE_OUTFILE  | happy | 23:00 |
    Then User add "Scheduler" with invalid EndTime
      |  EGPS_CHEQUE_OUTFILE   | 09:00 | happy |

  @TC_04_04_AddNewSchedulerwithBlankdata
  Scenario: To Add Scheduler with Blank data
    Then User goes Maintenance and open Schedule New menu
    Then User add "Scheduler" with StartTime field blank
      | EGPS_CHEQUE_OUTFILE      |  | 23:00 |
    Then User add "Scheduler" with EndTime field blank
      |  EGPS_CHEQUE_OUTFILE     | 09:00 |  |

  @TC_04_05_AddNewSchedulerwithValiddata
  Scenario Outline: To Add Scheduler with valid data
    Then User goes Maintenance and open Schedule New menu
    Then User add "<Scheduler>","<StartTime>","<EndTime>","<FrequencyHH>","<FrequenyMM>","<FrequencySS>","<SettlementCycle>"

    Examples: 
      | Scheduler                          | StartTime | EndTime | FrequencyHH | FrequenyMM | FrequencySS | SettlementCycle |
      | EGPS_CHEQUE_OUTFILE                | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      | EGPS_CHEQUE_RETURN_OUTFILE         | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      | EGPS_VIP_CHEQUE_ACCEPTANCE_OUTFILE | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      | EGPS_VIP_CHEQUE_OUTFILE            | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      | FINAL_ISF_SCHEDULER                | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      | ISRAELI_CHEQUE_STOP_SCHEDULER      | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      | PRE_ISF_SCHEDULER                  | 09:00     | 23:00   |          00 |         01 |          00 |              00 |
      

  @TC_04_06_AddAlreadyExistingScheduler
  Scenario Outline: To Add Scheduler with already existing data
    Then User goes Maintenance and open Schedule New menu
    Then User tries to add already existing "<Scheduler>"

    Examples: 
      | Scheduler                          |
     
      | EGPS_CHEQUE_OUTFILE                |
      | EGPS_CHEQUE_RETURN_OUTFILE         |
      | EGPS_VIP_CHEQUE_ACCEPTANCE_OUTFILE |
      | EGPS_VIP_CHEQUE_OUTFILE            |
      | FINAL_ISF_SCHEDULER                |
      |ISRAELI_CHEQUE_STOP_SCHEDULER       |
      |PRE_ISF_SCHEDULER                   |

  @TC_04_07_ListSchedulersforAllServers
  Scenario Outline: To List Scheduler with valid data
    Then User goes Maintenance and open Schedule List menu
    Then User Select valid criteria using "<SchedulerStatus>" and click on OK button

    Examples: 
      | SchedulerStatus |
      | All             |

  @TC_04_08_ListSchedulersforEnabledServers
  Scenario Outline: To List Scheduler with valid data
    Then User goes Maintenance and open Schedule List menu
    Then User Select "<SchedulerStatus>" and click on OK button

    Examples: 
      | SchedulerStatus |
      | Enabled         |

  @TC_04_09_ModifySchedulers
  Scenario: To Modify Scheduler
    Then User goes Maintenance and open Schedule Modify menu
    Then User modify EGPS_VIP_CHEQUE_ACCEPTANCE_OUTFILE scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
      | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |
    Then User modify EGPS_VIP_CHEQUE_OUTFILE scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
      | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |
    Then User modify FINAL_ISF_SCHEDULER scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
      | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |
    Then User modify EGPS_CHEQUE_OUTFILE scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
      | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |
    Then User modify EGPS_CHEQUE_RETURN_OUTFILE scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
      | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |
    Then User modify ISRAELI_CHEQUE_STOP_SCHEDULER scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
      | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |
    Then User modify PRE_ISF_SCHEDULER scheduler with "SchedulerStatus","StartTime","EndTime","FrequencyHH","FrequenyMM","FrequencySS","SettlementCycle"
       | All | 09:00 | 23:00 | 00 | 01 | 00 | 00 |

  @TC_04_10_ListSchedulersforDisabledServers
  Scenario Outline: To List Scheduler with valid data
    Then User goes Maintenance and open Schedule List menu
    Then User Select "<SchedulerStatus>" and Click on OK button

    Examples: 
      | SchedulerStatus |
      | Disabled        |
