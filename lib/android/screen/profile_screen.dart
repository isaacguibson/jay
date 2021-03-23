import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileScreen extends StatelessWidget {
  final double bodySize;
  final double bodyWidth;

  ProfileScreen(this.bodySize, this.bodyWidth);

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
        child: Column(
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
                child: Column(
                  children: <Widget>[
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
                    Text('Total Left: 200'),
                    Divider(),
                    RaisedButton(
                      child: Text(
                        'Change Goal',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue[800],
                      highlightColor: Colors.blue[900],
                      onPressed: () {},
                      elevation: 3,
                      highlightElevation: 0,
                    ),
                    Container(
                      width: bodyWidth - 20,
                      child: Text(
                        'Goal',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(18),
                      width: bodyWidth - 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '\$ 2.500,00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
