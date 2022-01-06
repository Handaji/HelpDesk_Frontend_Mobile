import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopPage extends StatelessWidget {
  Widget buildNom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Project Name',
          style: TextStyle(
              color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 20),
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildLibelle() {
    return Column(
      children: <Widget>[
        Text(
          'Project Libelle',
          style: TextStyle(
              color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 20),
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '     Project Description',
          style: TextStyle(
              color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
              ]),
          height: 100,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 20),
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
        elevation: 10,
        backgroundColor: Color(0x997B0000),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15), //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), //color of shadow
                  spreadRadius: 3, //spread radius
                  blurRadius: 5, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Text(
              "New Project",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15), //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), //color of shadow
                  spreadRadius: 3, //spread radius
                  blurRadius: 5, // blur radius
                  offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
                  //second parameter is top to down
                ),
                //you can set more BoxShadow() here
              ],
            ),
            child: Column(children: <Widget>[
              Text(
                '\n',
              ),
              buildNom(),
              Text(
                '\n',
              ),
              buildLibelle(),
              Text(
                '\n',
              ),
              buildDescription(),
            ]),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
