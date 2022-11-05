import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/home.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Enter your name"),
            ),
          ),
        ),
        Container(
            alignment: const Alignment(-0.45, -0.175),
            child: const Text('Please Enter Your Name',
                style: TextStyle(
                    fontSize: 22, color: Color.fromRGBO(67, 35, 68, 1)))),
        Container(
            alignment: const Alignment(-0.65, 0.25),
            child: const Text('Select your role',
                style: TextStyle(
                    fontSize: 22, color: Color.fromRGBO(67, 35, 68, 1)))),
        const ListTile(
          title: Text('ผู้พิการ'),
        ),
        const ListTile(
          title: Text('ผู้ช่วยเหลือ'),
        ),
        Container(
            alignment: const Alignment(0, 0.8),
            child: SizedBox(
              width: 320,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 12.0,
                    backgroundColor: const Color.fromRGBO(67, 35, 68, 1),
                    textStyle:
                        const TextStyle(fontSize: 22, color: Colors.white)),
                child: const Text('Continue'),
              ),
            ))
      ],
    ));
  }
}
