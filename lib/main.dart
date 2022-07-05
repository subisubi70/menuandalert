import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Alert(),
  ));
}

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.slideshow),
                  title: Text('slideshow'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CheckLogin(context);
          },
          child: const Text(
            "Alert",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
          ),
        ),
      ),
    );
  }

  CheckLogin(BuildContext cntx) {
    showDialog(
        context: cntx,
        builder: (cntx1) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('This is a alert box'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(cntx1).pop();
                },
                child: Text('Close'),
              ),
            ],
          );
        });
  }
}
