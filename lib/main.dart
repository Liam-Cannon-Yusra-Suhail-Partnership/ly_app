import 'package:flutter/material.dart';

//import 'package:auto_size_text/auto_size_text.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chore Tracker',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.amber,
        ),
        home: MyHomePage(title: 'Chore Tracker Home Page'),
        routes: {
          '/about': (context) => new AboutScreen(title: 'About us',),
          '/addChores': (context) => new AddChoreScreen(),
          '/viewChores': (context) => new ViewChoreScreen(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final". Final means that the value assigned to the variable
  // is hardcoded and can't change.

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  Widget welcomeText(BuildContext context) {
    return Text('Greetings to Chore Tracker!!',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..color = Colors.blue[700]!,
      )
    );

  }
  // Widget aboutText(BuildContext context) {
  //   return Text('Hey do you want to know about us? Hit the about button :)',
  //   textAlign: TextAlign.center,
  //   style: TextStyle(
  //             fontSize: 22,
  //             color: Colors.grey[800],
  //             fontWeight: FontWeight.w900,
  //             fontStyle: FontStyle.italic,
  //           ),
  //   );
  // }
  Widget startText(BuildContext context) {
    return Text('How would you like to manage your chores?',
    textAlign: TextAlign.center,
    style: TextStyle(
              fontSize: 22,
              color: Colors.grey[800],
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
    );
  }

  Widget aboutButton(BuildContext context) {
    return Text('Who are we?',
    style: TextStyle(fontSize: 22,
              color: Colors.blue[700]!,
              fontWeight: FontWeight.w900,),
    );
  }

  Widget viewChoreButton(BuildContext context) {
    return Text('View Chores',
    style: TextStyle(
              fontSize: 20,
              color: Colors.blue[700]!,
              fontWeight: FontWeight.w900,
          ),
    );
  }

  Widget addChoreButton(BuildContext context) {
    return Text('Add Chores ',
    style: TextStyle(
              fontSize: 20,
              color: Colors.blue[700]!,
              fontWeight: FontWeight.w900,
          ),
    );
  }
  final viewButton = new Container();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                height: 40,
              ),
            Container(child: welcomeText(context)),
            //Use of SizedBox to add spacing in between buttons
            SizedBox(
                height: 40,
              ),
            Container(child: startText(context)),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            SizedBox(
                height: 15,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 ElevatedButton(
                child: addChoreButton(context),
                onPressed: () => Navigator.of(context).pushNamed('/addChores')),
            SizedBox(
                width: 15,
              ),
            ElevatedButton(
                child: viewChoreButton(context),
                onPressed: () =>
                    Navigator.of(context).pushNamed('/viewChores')),
              ],
            ),
            SizedBox(
                height: 100,
              ),
            // Container(child: aboutText(context)),
            // SizedBox(
            //     height: 40,
            //   ),
            ElevatedButton(
                child: aboutButton(context),
                onPressed: () => Navigator.of(context).pushNamed('/about')),      
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black87,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add, size: 30),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
Widget member1(BuildContext context) {
    return Text('Liam Cannon ');
}
Widget member2(BuildContext context) {
    return Text('Yusra Suhail ');
}
Widget member3(BuildContext context) {
    return Text('Lakshinee Rungadoo ');
}
class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the about page of your application. 
  final String title;
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(child: TeamMembers(),)
   );
  }
}
class TeamMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Add some generic stuff in here',
          textScaleFactor: 2.0,
          style: TextStyle(
            color: Color.fromARGB(255, 170, 33, 243),
            fontSize: 10.0
           ),
        ),
        ElevatedButton(
                child: member1(context),
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroMember1()),
                );
              },
            ),
        ElevatedButton(
                child: member2(context),
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroMember2()),
                );
              },
            ),
        ElevatedButton(
                child: member3(context),
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroMember3()),
                );
              },
            ),
      ],
    );
  }
}
class IntroMember1 extends StatelessWidget {
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Liam Cannon'),
      ),
    );
  }
}
class IntroMember2 extends StatelessWidget {
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Yusra Suhail'),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'I am a senior at University of Rhode Island, completing my bachelors in Computer Science.',
              textScaleFactor: 2.0,
              style: TextStyle(
                color: Color.fromARGB(255, 9, 8, 9),
                fontSize: 7.0
              ),
            ),
          ]
        ),
      ),
    );
  }
}
class IntroMember3 extends StatelessWidget {
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Lakshinee Rungadoo'),
      ),
    );
  }
}
//todo: Add classes for the "add chores" and "view chores" pages.
class AddChoreScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Add Chore Page'),
      ),
    );
  }
}

class ViewChoreScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Chore Page'),
      ),
    );
  }
}
