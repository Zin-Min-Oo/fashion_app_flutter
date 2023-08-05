import 'package:fashion_app/details.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset('assets/pic4.jpeg', fit: BoxFit.cover, height: 400.0),
            Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 40.0),
                  const Text(
                    'Louis W. & A.P.C',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  const Text(
                    'Drop a Chic Selection of Outerwear',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(height: 7.0),
                  const Text(
                    'for 2019 Spring/Summer',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(height: 175.0),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailInfo()));
                    },
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    child: const Center(
                        child: Icon(Icons.arrow_forward, color: Colors.black)),
                  )
                ],
              ),
            )
          ],
        ),
        Stack(
          children: <Widget>[
            Image.asset('assets/pic5.jpeg', fit: BoxFit.cover, height: 400.0)
          ],
        )
      ],
    ));
  }
}
