# Pre-work - tips

tipster is a tip calculator application for iOS.

Submitted by: Kevin Asistores

Time spent: 90 hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!
- [x] Split the cost of the bill from up to 99 people

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/CGt0PFv.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

When entering the app you are introduced to the keypad. you can choose your initial bill amount at the spot. you can also split the bill by up to 99 people. The first 5 are shown upon opening the application. You can then choose the different tip percentages throug the segment control. Default tip percentage is shown by the default key. It can be changed by going into the settings and changing the default tip amount. It can only be changed if you click the save button. After restarting the application by quitting it, you can see that the default tip amount that you entered is saved into the application.

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

I didn't know how to do a lot of the things I wanted to do beforehand and had to settle with more functionality. I wanted to deselect the tip percentages in the segmented control if I wanted to use the default tip percent. Also, I couldn't figure out how to do animations either which I should have definitely spent more time researching. I also figured out fairly late how to customize the buttons like the stepper and the segmented control and I stil can't figure out how to change to color of the navigation bar. It took me a long time to figure out how to add the % sign to the label in the screen. I googled for a long time and ended up with too complex solutions that I could not figure out and I finally fingured it out through the simplest way possible. It also took a long time for me to understand that I could edit the last price through two different methods. Another simple solution that I spent way too much time overthinking. Also I could not figure out how to implement the commas for numbers over one one thousand and to use the time to erase what was in the text field. Lastly, I could not figure out how to change the default tip amount and, while still in defualt tip amount in the segmented control, autimatically change the bill.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
