import 'package:flutter/material.dart';
import 'package:helpdesk_mobile/entity/Project.dart';

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
      
    );
  }
}
