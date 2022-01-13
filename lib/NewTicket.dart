import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:helpdesk_mobile/LoginPage.dart';
import 'package:helpdesk_mobile/screens/ListTickets.dart';
import 'package:helpdesk_mobile/screens/ProjectDetail.dart';

class NTicket extends StatefulWidget {
  @override
  NTicketState createState() => NTicketState();
}

class NTicketState extends State<NTicket> {
  @override
  Widget build(BuildContext context) {
    var currentSelectedValue;
    const deviceTypes = ["Done", "To Do", "Doing"];

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Text(
                '\n',
              ),
              TextFormField(
                  decoration:
                  const InputDecoration(labelText: '    Name of Ticket')),
              Text(
                '\n',
              ),
              TextFormField(
                  decoration:
                  const InputDecoration(labelText: '    Attribution')),
              Text(
                '\n',
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '    Description'),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
              FormField<String>(builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: DropdownButton<String>(
                      hint: Text("Select Status of the ticket"),
                      value: currentSelectedValue,
                      isDense: true,
                      onChanged: (newValue) {
                        setState(() {
                          currentSelectedValue = newValue;
                        });
                        print(currentSelectedValue);
                      },
                      items: deviceTypes.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              }),
              Text(
                '\n',
              ),
              DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Starting Date',
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

            ]),
          ),
          ElevatedButton.icon(
            onPressed: () {



              // Respond to button press
            },
            icon: Icon(Icons.add, size: 25),
            label: Text("Add Ticket"),
            style: ElevatedButton.styleFrom(
              primary: Colors.black26,
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
