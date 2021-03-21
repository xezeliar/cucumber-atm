Feature: deposit
  As a customer
  I want to deposit to my account using ATM

  Background:
    Given a customer with id 1 and pin 123 with balance 100 exists
    And I login to ATM with id 1 and pin 123

  Scenario: Deposit positive amount
    When I deposit 100 by using ATM
    Then my account balance is 200

  Scenario: Deposit negative amount
    When I deposit -20 by using ATM
    Then my account balance is 200