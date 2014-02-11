### XCTest Notification Shows Test Failed on Successful Tests
Dulio Denis <br>20-Nov-2013 01:41 PM

#### Product:Developer Tools
#### State:Duplicate
#### Duplicate of 14828018 (Open)
[OpenRadar](http://openradar.appspot.com/radar?id=5808190574821376)

#### Summary:
When executing a single XCTest the Notification will state the "Test Failed" despite the Xcode editor shows it succeeded.  Without changing any code upon the next execution the Notification will come in as "Test Succeeded." The failed notification is intermittent but repeatable upon the most basic of tests.

#### Steps to Reproduce:
1. Create a New File > Cocoa Touch > Objective-C test case class
2. Create a simple test. I used XCTAssertEqual(A, B, @"Equality"); on two of the same singleton objects.
3. Execute test to invoke notification.

#### Expected Results:
Expected "Test Succeeded" upon every execution.

#### Actual Results:
Within a set of four test executions a "Test Failed" notification is encountered at least once.

#### Version:
Xcode Version 5.0 (5A1413) on OS X 10.8.5

#### Notes:


#### Configuration:


#### Attachments:

#### Apple Developer Relations
22-Nov-2013 11:11 AM

Engineering has requested the following:

Dulio - please attach your console output when the test failure issue crops up.

Please provide your response or results by updating your bug report.

#### Dulio Denis
22-Nov-2013 02:45 PM

Test Suite 'APIStoreTests' started at 2013-11-22 19:39:53 +0000
Test Suite 'APIStoreTests' finished at 2013-11-22 19:39:53 +0000.
Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.000) seconds
Test Suite 'DataStoreTestCases' started at 2013-11-22 19:39:53 +0000
Test Case '-[DataStoreTestCases testSingletonPatternImplementation]' started.
Test Case '-[DataStoreTestCases testSingletonPatternImplementation]' passed (0.000 seconds).
Test Suite 'DataStoreTestCases' finished at 2013-11-22 19:39:53 +0000.
Executed 1 test, with 0 failures (0 unexpected) in 0.000 (0.000) seconds
Test Suite 'JustWorks_DirectoryTests' started at 2013-11-22 19:39:53 +0000
Test Suite 'JustWorks_DirectoryTests' finished at 2013-11-22 19:39:53 +0000.
Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.000) seconds
Test Suite 'JustWorks DirectoryTests.xctest' finished at 2013-11-22 19:39:53 +0000.
Executed 1 test, with 0 failures (0 unexpected) in 0.000 (0.000) seconds
Test Suite 'Multiple Selected Tests' finished at 2013-11-22 19:39:53 +0000.
Executed 1 test, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
Program ended with exit code: 0

#### Apple Developer Relations
03-Dec-2013 07:48 PM

Engineering has determined that your bug report is a duplicate of another issue and will be closed. 

The open or closed status of the original bug report your issue was duplicated to appears in the yellow "Duplicate of XXXXXXXX" section of the bug reporter user interface. This section appears near the top of the right column's bug detail view just under the bug number, title, state, product and rank.

Example:

13556600 User interface anomaly in OS X
                  
State: Duplicate                   Product: OS X
Rank: 3 - Medium
---------------------------------------------------------------
Duplicate of 10535951 (Open)
---------------------------------------------------------------


If you have any questions or concerns, please update your report directly here: http://bugreport.apple.com/.