import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
              Text(
                'Twitter',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Social Media',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
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
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      '+44 123 456 789',
                      style: TextStyle(
                          color: Colors.teal.shade900, fontSize: 20.0),
                    )),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      'email@twitter.com',
                      style: TextStyle(
                          color: Colors.teal.shade900, fontSize: 20.0),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
