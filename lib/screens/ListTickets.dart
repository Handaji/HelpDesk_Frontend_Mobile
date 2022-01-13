import 'package:flutter/material.dart';
import 'package:helpdesk_mobile/NewTache.dart';
import 'package:helpdesk_mobile/NewTicket.dart';
import 'package:helpdesk_mobile/entity/Project.dart';

class TicketDetail extends StatefulWidget {
  final Project project;
  TicketDetail(this.project);
  @override
  State<StatefulWidget> createState() => TicketDetailState(project);
}

class TicketDetailState extends State {
  Project project;
  TicketDetailState(this.project);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    titleController.text = "Ticket Title";
    descriptionController.text = "Ticket Description";
    //TextStyle textStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NTache()));
        },

        tooltip: "Add New Tache",
        child: new Icon(Icons.add),
      ),

      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Ticket Information"),
        backgroundColor: Colors.redAccent,
      ),
      body: //TaskListItems(),
      Padding(
          padding: EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: "Title",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        labelText: "Description",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),


    );
  }
}
