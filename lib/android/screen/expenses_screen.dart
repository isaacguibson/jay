import 'package:flutter/material.dart';

/*Android Widgets*/
import '../widgets/DropdownTypeWidget.dart';
import '../widgets/ExpensesListWidget.dart';

class ExpensesScreen extends StatelessWidget {

  final double bodySize;

  ExpensesScreen(this.bodySize);

  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      title: Text('Expenses'),
    );

    var screenSize = bodySize - appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: Container(
        //color: Color.fromRGBO(130, 235, 249, .6),
        color: Colors.blue[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: screenSize * 0.3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                height: screenSize * 0.7,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      DropdownTypeWidget(screenSize * 0.7),
                      ExpensesListWidget(screenSize * 0.7),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
