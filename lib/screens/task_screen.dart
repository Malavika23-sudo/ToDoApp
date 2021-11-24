import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/tasklist_model.dart';
import 'package:todo/model/testmodel.dart';
import 'package:todo/screens/add_task_screen.dart';
import 'package:todo/services/task_list.dart';
import 'package:todo/services/test.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        elevation: 50,
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.greenAccent,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return AddTaskScreen();
              });
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 15),
            child: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              backgroundColor: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 15),
            child: Text(
              'TODoey',
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 15),
            child: Text('${Provider.of<Data>(context).count} tasks',
                style: TextStyle(color: Colors.greenAccent, fontSize: 15)),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            child: Container(
              height: 5000,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
