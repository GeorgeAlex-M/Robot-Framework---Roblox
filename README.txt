//
// Copyright 2022 UNREAL SOFTWARE ORG.
//
// The corresponding source code is free: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by the Free
// Software Foundation, either version 3 of the License, or (at your option) any later version.

// These robot files and corresponding source code is distributed
// in the hope that it will be useful, but with permitted additional restrictions
// under Section 7 of the GPL. See the GNU General Public License in LICENSE.TXT
// distributed with this program. You should have received a copy of the
// GNU General Public License along with permitted additional restrictions
// with this program. If not, see https://github.com/GeorgeAlex-M/Robot-Framework---Roblox

/***********************************************************************************************
 ***               C O N F I D E N T I A L  ---  U N R E A L  S O F T W A R E                ***
 ***********************************************************************************************
 *                                                                                             *
 *                 Project Name : Robot Framework - Roblox Automation                          *
 *                                                                                             *
 *                    File Name : .robot                                                       *
 *                                                                                             *
 *                   Programmer : George Manea                                                 *
 *                                                                                             *
 *                   Start Date : 07/26/22                                                     *
 *                                                                                             *
 *                  Last Update : July 28, 2022                                                *
 *                                                                                             *
 *---------------------------------------------------------------------------------------------*

Behavior-Driven Development (BDD)

TDD works very well at the unit level, but the tests still reflect the developer's
perspective. In order to consider the goals of implementation, the perspectives of
other stakeholders must be considered and this is accomplished using the Behavior-
Driven Development (BDD) approach. Dan North, the founder of BDD explains BDD
as “using examples at multiple levels to create a shared understanding and surface
uncertainty to deliver software that matters.” [North19]

BDD extends TDD by writing test cases in a natural language that non-programmers
and domain experts can read. It uses the underlying concept of TDD, but instead of
thinking about writing a failed test, BDD starts with writing a feature. It then follows the
same process as TDD to write a test for the feature and code to pass the feature test.
In this way the feature is traced all the way up to a requirement.

Although it still has much in common with TDD from a technical perspective, BDD
intentionally uses different terminology to reflect its distinct goals and approach. For
example, TDD relies on unit tests to verify implementation details whereas BDD relies
on executable scenarios to verify behaviors. The low-level technical implementations
are often similar, but the formulations are very different.

BDD follows these steps:
1) Identify the business feature (often provided as a user story or epic)
2) Identify scenarios under the selected feature
3) Define steps for each scenario
4) Run feature and fail
5) Write code and implement the feature
6) Run feature and pass. Repeat steps 4 and 5 several times if necessary
7) Refactor code

BDD features are usually defined in a Given/When/Then format, which is a semi-
structured way of writing the test cases as shown in the following:

• Given – describes the state of the environment before the behavior is triggered
• And – describes the action or actions that trigger the behavior
• When – describes the action or actions that trigger the behavior
• Then – describes the expected result or results of the behavior

BDD scenarios can be coded and executed using common unit testing frameworks
available in most modern programming environments. When coded in this way, BDD
scenarios are essentially written as unit or integration tests and BDD may be applied
in much the same way as TDD for testing in the pipeline. After the feature file is
written to capture customer requirements properly, developers and testers start
implementing the necessary test cases and test suites. Like TDD frameworks, there
are many BDD test frameworks available. There are many TDD frameworks that
extend the functionality to write features and derive test cases from the features using
test runners such as jUnit, TestNG and Mocha.
