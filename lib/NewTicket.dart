import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:date_time_picker/date_time_picker.dart';

class Ticket extends StatelessWidget {
  Widget buildNom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Ticket Name',
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
          'Ticket Libelle',
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
          '     Ticket Description',
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
              "New Ticket",
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
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name of Ticket'),
                maxLines: null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ticket Libelle'),
                maxLines: null,
              ),
              DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white,
                        Colors.white,
                        Colors.white
                        //add more colors
                      ]),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.57),
                            //shadow for button
                            blurRadius: 2) //blur radius of shadow
                      ]),
                  child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: DropdownButton(
                        value: "Select Status",
                        items: [
                          //add items in the dropdown
                          DropdownMenuItem(
                            child: Text("Select Status"),
                            value: "Select Status",
                          ),
                          DropdownMenuItem(
                            child: Text("Done"),
                            value: "done",
                          ),
                          DropdownMenuItem(
                              child: Text("Doing"), value: "doing"),
                          DropdownMenuItem(
                            child: Text("To Do"),
                            value: "todo",
                          )
                        ],
                        onChanged: (value) {},
                        isExpanded: true,
                        //make true to take width of parent widget
                        underline: Container(),
                        //empty line
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.black, //Icon color
                      ))),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                keyboardType: TextInputType.multiline,
                maxLines: 2,
              ),
              DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              OutlineButton(
                shape: StadiumBorder(),
                highlightedBorderColor: Colors.blueGrey,
                borderSide: BorderSide(width: 4, color: Colors.blueGrey),
                onPressed: () {},
                child: Text('Add Ticket'),
              )
            ]),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
