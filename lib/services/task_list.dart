import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/tasklist_model.dart';
import 'package:todo/model/testmodel.dart';
import 'package:todo/services/task_tile.dart';

class ListWidget extends StatelessWidget {
  Tasks task = Tasks();

  @override
  Widget build(BuildContext context) {
    var provider = Provider;
    return Consumer(
      builder: (context, TaskData, child) {
        final task = Provider.of<Data>(context);
        return ListView.builder(
          itemBuilder: (context, index) {
            return TileWidget(task.tasks[index].isDone, task.tasks[index].name,
                (state) {
              Provider.of<Data>(context, listen: false).check(index);
            }, () {
              Provider.of<Data>(context, listen: false).delete(index);
            });
          },
          itemCount: task.count,
        );
      },
    );
  }
}
