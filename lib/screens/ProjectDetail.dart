import 'package:flutter/material.dart';
import 'package:helpdesk_mobile/NewTache.dart';
import 'package:helpdesk_mobile/entity/Project.dart';

import '../NewProject.dart';
import '../NewTicket.dart';
import 'ListProject.dart';

class ProjectDetail extends StatefulWidget {
  final Project project;
  ProjectDetail(this.project);
  @override
  State<StatefulWidget> createState() => ProjectDetailState(project);
}

class ProjectDetailState extends State {
  Project project;
  ProjectDetailState(this.project);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    titleController.text = "Project Title";
    descriptionController.text = "Project Description";
    //TextStyle textStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NTicket()));
        },

        tooltip: "Add New Ticket",
        child: new Icon(Icons.add),
      ),

      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Project Information"),
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
