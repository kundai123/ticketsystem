import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';

TextEditingController _firstname = TextEditingController();
TextEditingController _surname = TextEditingController();
TextEditingController _companyname = TextEditingController();
TextEditingController _branchname = TextEditingController();
TextEditingController _address = TextEditingController();
TextEditingController _city = TextEditingController();
TextEditingController _region = TextEditingController();
// TextEditingController _branchname = TextEditingController();
TextEditingController _ticketnumber = TextEditingController();
TextEditingController _agentlevel = TextEditingController();
TextEditingController _problemdesc = TextEditingController();
TextEditingController _assignmentstatus = TextEditingController();

String firstname;
String surname;
String companyname;
String branchname;
String address;
String city;
String region;
String ticketnumber;
String agentlevel;
String problemdesc;
String assignmentstatus;

class MainTicketCard extends StatefulWidget {
  @override
  TicketCard createState() => TicketCard();
}

class TicketCard extends State<MainTicketCard> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  //username input

  String username;
  String password;

  //file selector

  // --------File Picker for Mobile!!!----------
  // Future pickImage() async {
  //   await ImagePicker().getImage(source: ImageSource.gallery);
  // }

  // --------File Picker for Web!!!----------
  Future pickImage() async {
    await ImagePickerWeb.getImage(outputType: ImageType.widget);
  }

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
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  //file Picker
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _firstname,
                      decoration: InputDecoration(labelText: 'First Name'),
                      onChanged: (value) => firstname = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      controller: _surname,
                      decoration: InputDecoration(labelText: 'Surname'),
                      onChanged: (value) => surname = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _companyname,
                      decoration: InputDecoration(labelText: 'Company Name'),
                      onChanged: (value) => companyname = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      controller: _branchname,
                      decoration: InputDecoration(labelText: 'Branch Name'),
                      onChanged: (value) => branchname = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _address,
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => address = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      controller: _city,
                      decoration: InputDecoration(labelText: 'City'),
                      onChanged: (value) => city = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _region,
                      decoration: InputDecoration(labelText: 'Region'),
                      onChanged: (value) => region = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      controller: _branchname,
                      decoration: InputDecoration(labelText: 'Branch Name'),
                      onChanged: (value) => branchname = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _ticketnumber,
                      decoration: InputDecoration(labelText: 'Ticket Number'),
                      obscureText: true,
                      onChanged: (value) => ticketnumber = value,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      controller: _agentlevel,
                      decoration: InputDecoration(labelText: 'Agent Level'),
                      obscureText: true,
                      onChanged: (value) => agentlevel = value,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: inputFile(label: "Problem Description")),
                  Padding(padding: const EdgeInsets.all(10)),
                  Expanded(child: inputFile(label: "Assignment Status")),
                ],
              ),

              // select file
              Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Upload File"),
                    onPressed: () => pickImage(),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {},
                  color: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
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
