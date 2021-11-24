import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/testmodel.dart';

class TileWidget extends StatelessWidget {
  final bool? ischecked;
  final String? taskTitle;

  final Function(bool? value) onchange;
  final Function()? onpress;

  TileWidget(this.ischecked, this.taskTitle, this.onchange, this.onpress);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
        title: Text(taskTitle.toString(),
            style: TextStyle(
              color: Colors.black,
              decoration: ischecked! ? TextDecoration.lineThrough : null,
            )),
        trailing: Container(
          width: 100,
          height: 30,
          child: Row(
            children: [
              Checkbox(
                  value: ischecked,
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.black,
                  onChanged: onchange),
              IconButton(onPressed: onpress, icon: Icon(Icons.delete))
            ],
          ),
        ));
  }
}
