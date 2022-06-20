import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SportsCard(),
    ));

class SportsCard extends StatefulWidget {
  const SportsCard({Key? key}) : super(key: key);

  @override
  State<SportsCard> createState() => _SportsCardState();
}

class _SportsCardState extends State<SportsCard> {
  int courses = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Align(
                    child: Center(
                      child: Container(
                        height: 300.0,
                        width: 500.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2.0, color: Colors.amber),
                          image: DecorationImage(
                            image: AssetImage('assets/game.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Container(
                            height: 130.0,
                            width: 370.0,
                            margin: EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
                            padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Clan Name: Buriburi Zaemon',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  '28 Members, 5 Online',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],),
                  ),
                ],),
              Divider(
                height: 70.0,
                thickness: 5.0,
                color: Colors.white,
              ), //First divider
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Achievements',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'Current League',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'League Ranking',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'Experience',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        '# of wins',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/sheild.jpg',
                        width: 120.0,
                        height: 110.0,
                      ),
                      Text(
                        '11th',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Text(
                        '2000 xp',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],),
                ],),
              Divider(
                height: 70.0,
                thickness: 5.0,
                color: Colors.white,
              ),//second divider
              Text(
                'Past Featured Performances',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/MickeyMouse.jpg',
                        width: 120.0,
                        height: 110.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Image.asset(
                        'assets/MinnieMouse.jpg',
                        width: 120.0,
                        height: 110.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 20.0,),
                        Text(
                          'Mickey in International Laughing League',
                          style: TextStyle(
                            color: Colors.red[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 60.0),
                        Text(
                          'Minnie in Global Jumping Finals',
                          style: TextStyle(
                            color: Colors.red[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Center (
                child: Text(
                'see more',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
               Divider(
                height: 70.0,
                thickness: 5.0,
                color: Colors.white,
              ), //third divider
              Text(
                'Live clan activities on platform',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              Stack(
                children:<Widget>[
                  Center(child: Image(image: AssetImage('assets/night.jpg'), height: 200.0, width: 360.0,)),
                  Container(
                    margin: EdgeInsets.fromLTRB(80.0, 90.0, 80.0, 0.0),
                    child: Text(
                      'Live Trading Championship',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                      ),
                  )
                ]),
              SizedBox(height: 40.0),
              Stack(
                children:<Widget>[
                  Center(child: Image(image: AssetImage('assets/night.jpg'), height: 200.0, width: 360.0,)),
                  Container(
                    margin: EdgeInsets.fromLTRB(120.0, 90.0, 80.0, 0.0),
                    child: Text(
                      'Treasure Hunt',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                      ),
                  )
                ]),
              SizedBox(height: 10.0,),
              Center (
                child: Text(
                'see more',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
               Divider(
                height: 70.0,
                thickness: 5.0,
                color: Colors.white,
              ), //fourth divider
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                'Clan discussions',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'General Thread',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '15 unread messages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '(live) anyone enthu for trading league',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '10 unread messages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '(live) anyone enthu for trading league',
                style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '10 unread messages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ],),
              SizedBox(height: 20.0,),
              Center (
                child: Text(
                'see more',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
               Divider(
                height: 70.0,
                thickness: 5.0,
                color: Colors.white,
              ),  //fifth divider 
              Text(
                'Clan Members',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                      backgroundImage: AssetImage('assets/MickeyMouse.jpg',),
                      radius: 50.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      CircleAvatar(
                      backgroundImage: AssetImage('assets/MinnieMouse.jpg',),
                      radius: 50.0,
                      ),
                    ],
                  ),
                  SizedBox(width: 60.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 30.0,),
                        Text(
                          'Mickey Mouse - Clan Head',
                          style: TextStyle(
                            color: Colors.red[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 60.0),
                        Text(
                          'Minnie Mouse - Debating Sensei',
                          style: TextStyle(
                            color: Colors.red[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],),
                  ),
                ],),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        color: Colors.black,
        child: Center(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.house_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.stars_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.stacked_bar_chart_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_accessibility_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/buriburizaemon.jpg'),
                  radius: 25.0,
                ),
              ]),
        ),
      ),
    );
  }
}
