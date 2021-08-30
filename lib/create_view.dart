import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:login_signup_screen/login.dart';
import 'package:login_signup_screen/ticketCard.dart';

class CreateView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    // Expanded(
                    width: 180.0,
                    height: 120.0,
                    child: RaisedButton(
                      child: Text("Create Ticket"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //if user info is true open ticket card
                                builder: (context) => MainTicketCard()));
                      },
                      textColor: Colors.white,
                      color: Colors.black,

                      // padding: ,
                    ),
                    // ),
                    // padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  ),
                  Padding(padding: const EdgeInsets.all(200)),
                  Container(
                    width: 180.0,
                    height: 120.0,
                    // Expanded(
                    child: RaisedButton(
                      child: Text("View Tickets"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainTicketCard()));
                      },
                      textColor: Colors.white,
                      color: Colors.black,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
