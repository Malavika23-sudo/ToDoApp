import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/testmodel.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final ctrl = TextEditingController();
  String taskTitle = 'some data';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextField(
                textAlign: TextAlign.center,
                controller: ctrl,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  onPressed: () {
                    Provider.of<Data>(context, listen: false)
                        .upadateTask(ctrl.text.toString());
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
