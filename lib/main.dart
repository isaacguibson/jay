import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*Android Widgets*/
import './android/widgets/ExpensesListWidget.dart';
import './android/widgets/DropdownTypeWidget.dart';
import './android/screen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<int, Color> swatch = {
    50: Color.fromRGBO(10, 173, 249, .1),
    100: Color.fromRGBO(10, 173, 249, .2),
    200: Color.fromRGBO(10, 173, 249, .3),
    300: Color.fromRGBO(10, 173, 249, .4),
    400: Color.fromRGBO(10, 173, 249, .5),
    500: Color.fromRGBO(10, 173, 249, .6),
    600: Color.fromRGBO(10, 173, 249, .7),
    700: Color.fromRGBO(10, 173, 249, .8),
    800: Color.fromRGBO(10, 173, 249, .9),
    900: Color.fromRGBO(10, 173, 249, 1),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Jay',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF005BD6, swatch),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(widget.title),
    );

    final double bodySize = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height);

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
                height: bodySize * 0.3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                height: bodySize * 0.6,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      DropdownTypeWidget(bodySize * 0.6),
                      ExpensesListWidget(bodySize * 0.6),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 8,
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(
          Icons.attach_money,
          color: Colors.white,
          size: 40,
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: bodySize * 0.1,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
