class Tasks {
  String? name;
  bool isDone;
  Tasks({this.isDone=false, this.name});

  bool toggleDone() {
    return isDone = !isDone;
  }
}
