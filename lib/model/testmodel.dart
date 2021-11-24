import 'package:flutter/foundation.dart';
import 'package:todo/model/tasklist_model.dart';
import 'package:collection/collection.dart';

class Data extends ChangeNotifier {
  List<Tasks> _tasks = [];

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void upadateTask(String datas) {
    _tasks.add(Tasks(name: datas));
    notifyListeners();
  }

  int get count {
    return _tasks.length;
  }

  void check(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void delete(int index) {
    _tasks.remove(_tasks[index]);
    notifyListeners();
  }
}
