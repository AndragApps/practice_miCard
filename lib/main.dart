import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andrag Apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "LibreBaskerville-Regular",
      ),
      debugShowCheckedModeBanner: false,

      ///Calling Another Widget
      home: MyHomePage(title: 'Mi Card'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.teal,
                ),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(
                      "res/andrag_images/IMG_20190617_201952_222.jpg"),
                ),
              ),
              Text(
                "Chirag Sitapara",
                style: TextStyle(
                  fontFamily: "Pacifico-Regular",
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: "SourceSansPro-Regular",
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+64-88-497-9419",
                    style: TextStyle(
                      fontFamily: "SourceSansPro-Regular",
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "info@flutterdeveloper.co.nz",
                    style: TextStyle(
                      fontFamily: "SourceSansPro-Regular",
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
