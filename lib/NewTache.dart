import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NTache extends StatefulWidget {
  @override
  NTacheState createState() => NTacheState();
}

class NTacheState extends State<NTache> {


  @override
  Widget build(BuildContext context) {
    var currentSelectedValue;
    const deviceTypes = ["Done","To Do", "Doing"];

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
              "New Tache",
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
                  const InputDecoration(labelText: '    Name of Tache')),
              Text(
                '\n',
              ),
              TextFormField(
                  decoration:
                  const InputDecoration(labelText: '    Tache Libelle')),
              Text(
                '\n',
              ),
              FormField<String>(builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: DropdownButton<String>(
                      hint: Text("Select Status of the tache"),
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
              TextFormField(
                decoration: const InputDecoration(labelText: '    Description'),
                maxLines: 3,
                keyboardType: TextInputType.multiline,
              ),
              Text(
                '\n',
              ),
            ]),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Respond to button press
            },
            icon: Icon(Icons.add, size: 25),
            label: Text("Add Tache"),
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

