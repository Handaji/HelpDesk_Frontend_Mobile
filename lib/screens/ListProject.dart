import 'package:flutter/material.dart';
import 'package:helpdesk_mobile/entity/Project.dart';
import 'package:helpdesk_mobile/screens/ProjectDetail.dart';

class ProjectList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProjectListState();
}

class ProjectListState extends State {
  int count = 1;
  List<Project> projects;

  @override
  Widget build(BuildContext context) {
    if (projects == null) {
      getData();
    }
    return Scaffold(
      body: projectListItems(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          navigateToProjectTask(Project('', '', 0, ''));
        },
        tooltip: "Add New project",
        child: new Icon(Icons.add),
      ),
    );
  }

  ListView projectListItems() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 3.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: getColor(1), //getColor status 1 - 2 - 3
              child: Text("P1"), //status
            ),
            title: Text("titre du projet 1"),
            subtitle: Text("2022-01-12"),
            onTap: () {
              debugPrint("Tapped On");
            },
          ),
        );
      },
    );
  }

  Color getColor(int status) {
    switch (status) {
      case 1:
        return Colors.red;
        break;
      case 2:
        return Colors.orange;
        break;
      case 2:
        return Colors.green;
        break;
      default:
        return Colors.green;
    }
  }

  void navigateToProjectTask(Project project) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetail(project)),
    );
    if (result == true) {
      getData();
    }
  }

  void getData() {
    /*List<Project>projectList;
        projectList.add(Project('Project1', '2022-01-12', 3, 'this is the 1st project '));*/
  }
}
