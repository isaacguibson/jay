import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileScreen extends StatelessWidget {
  final double bodySize;

  ProfileScreen(this.bodySize);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('Profile'),
    );

    var screenSize = bodySize - appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.blue[900],
        child: Stack(
          children: <Widget>[
            // The containers in the background
            Column(
              children: <Widget>[
                Container(
                  height: screenSize * .1,
                ),
                Container(
                  height: screenSize * .9,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: bodySize * 0.17),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Isaac Guibson',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: bodySize * 0.09,),
                        CircularPercentIndicator(
                          radius: 150.0,
                          lineWidth: 20.0,
                          percent: .75,
                          animation: true,
                          center: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$ ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Countup(
                                begin: 0,
                                end: 2224.25,
                                precision: 2,
                                duration: Duration(milliseconds: 500),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: Colors.blue,
                          progressColor: Colors.blue[900],
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            // The card widget with top padding,
            // incase if you wanted bottom padding to work,
            // set the `alignment` of container to Alignment.bottomCenter
            Container(
              alignment: Alignment.topCenter,
              child: Container(
                height: screenSize * .3,
                width: MediaQuery.of(context).size.width * 0.3,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/batman.jpeg'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
