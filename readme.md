## This is a UIAPP of the Juventus Men‘s Team 2020/2021.

** Images and data of players are from https://www.juventus.com/

In this APP, there are four screens. Brief details are below: 

1.The first  screen  is a UITableViewController with subtitle cell, which displays names, images and positions of players. Segue1 is from the Table View Cell to the second screen.

2.The second screen is a UIViewController which displays details about the players. For example, name, number, position, date of birth,nationality and photograph. And there is a button active to the third screen by the Segue2.

3.The third screen is a UIViewController, in which a Text View displays the statistics of the player in 2020/2021. Similarly, a button in screen3 is linked with the last screen by Segue3.

4.The fourth screen is a UIViewController with a WebKit View, which displays a website of the player.


5.All player data are in the players.xml file, include name, number,position, date of birth, nationality, statistics and url. And there is a XMLTeamParser Class in XMLPlayerParser.swift parse the data from the xml file. And in there is a Team Class use the XMLTeamParser build the Team data. Player class define the structure of player data.

6.In the LaunchScreen storyboard, an ImageView and two labels display the logo of Juventus. The icon of this APP is another logo of the club.
