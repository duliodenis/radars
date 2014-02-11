### Telephone Number Formatting
Dulio Denis<br>
20-Nov-2013 02:20 PM
####Product: iOS SDK
####State: Duplicate of 14909583 (Open)
[OpenRadar](http://openradar.appspot.com/radar?id=5866945727430656)


#### Summary:
On the iPhone the Apple Contacts App has private API for Phone Number Formatting that is not public.  This is evident when inserting an AddressBook Phone Number Record with a leading one or without having the format correctly handled as 1 (###) ###-#### or (###) ###-####. This is also evident in International phone number strings such as 011-(Country Code)-...  

Making the API public would enable developers to consistently display phone numbers on the iPhone to match the Apple phone number formatting.

#### Steps to Reproduce:
1. Create an App with the ABAddressBook Framework.
2. Insert a contact with a phone number record 4089961010 into the Address Book.
3. Look at it in the Contacts App. Number is formatted as (408) 996-1010
4. There is no way to format this number in Xcode without writing an NSFormatter and some regular expression to parse the pattern in order to apply the proper format.

####Expected Results:
Expect an API to format phone numbers on the iPhone based on the locale.

Actual Results:


####Version:
iOS 7.0.4

####Notes:


####Configuration:


####Attachments:

####Apple Developer Relations
05-Dec-2013 04:20 PM<br>

Engineering has determined that your bug report is a duplicate of another issue and will be closed. <br>

The open or closed status of the original bug report your issue was duplicated to appears in the yellow "Duplicate of XXXXXXXX" section of the bug reporter user interface. This section appears near the top of the right column's bug detail view just under the bug number, title, state, product and rank.<br>

Example:<br>

13556600 User interface anomaly in OS X<br>
                  
State: Duplicate                   Product: OS X<br>
Rank: 3 - Medium<br>
---------------------------------------------------------------<br>
Duplicate of 10535951 (Open)<br>
---------------------------------------------------------------<br>


If you have any questions or concerns, please update your report directly here: http://bugreport.apple.com/.