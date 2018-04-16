Feature: Account creation

In order to apply for a student loan
As a student
I want to be able to create an account
 

Scenario: Student creates an sccount (Happy path)
 Given I am a student
 When I submit valid details
     | First name | Last name | SSN         |
     | John       | Smith     | 111-22-2222 |
 Then my account is created