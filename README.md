# Resume_app description

This is an app that displays my resume, basic info about me, what I do and links to how you can reach me.

## Code base description

The app is made using the dart language. The codebase is made up of 3 folders in the lib folder and the main.dart file that runs the app.
The 3 folders are:
- Icons folder: this folder contains all the downloaded icons used in the app.
- Image folder: this folder contains the picture of myself I used in the about page.
- Screens folder: it contains 3 sub folders for each of the screens(home, about, services), their portrait, landscape and responsiveness logic files.

note: the responsiveness files simply check the layout of the screen and then with an if else statement returns the right layout for that screen.
      Also, the home folder contains a file called socialLink file which contains the build for the social media icons to avoid repetition.

## Design description
Shout out to Muhammed Hamza for the design inspiration: https://www.youtube.com/watch?v=hSwssj23CDo

The design has a black background color and a mixture of yellow and white for texts and other widgets. The home screen has an animated text list that changes to display my features. Navigation is done through a drawer on the home screen and a back icon on other screens. The design is responsive so the design changes to suit the width of the screen.

## Libraries used

- url_launcher: a package to link my social media icons on the home screen to their respective social platforms on the event of tapping the icons.
- google_fonts: this package gave me access to different fonts which I used in my app
- flip_card: this package gave the access to flip the card on the services page
- animated_text_kit: this package made it possible for the text animation on the home screen
- scrollable_positioned_list: it was to be used to scroll through the pages but I didn't do that again due to time constraints
- cupertino icons: package for ios icons but I didn't develop for ios

## Features I would have added with more time
- scrolling seamlessly from one screen to another like in a list
- adding individual projects and description from my github

## Link to .apk file
https://drive.google.com/file/d/1-9AuDlzDP3okxfmMm9r96tBMEcsLSycw/view?usp=share_link

## Challenges faced

- I didn't notice the instruction to make the app responsive at first, When I noticed I had to build separate screens for landscape layout in each section and a responsive logic page it worked well. 
- After my first release I noticed that the url wasn't working, on further troubleshooting I found out it was because I hadn't given the app internet permission which I did by copying <uses-permission android:name="android.permission.INTERNET"/> and pasting in main/androidManifest.xml

## Appetize.io link
https://appetize.io/app/yukfqtb3bnh3vjmooqg2do5jyi?device=pixel4&osVersion=12.0&scale=75

