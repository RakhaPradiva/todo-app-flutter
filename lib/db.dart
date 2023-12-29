import 'package:hive/hive.dart';

class todoDb {
  List toDoList = [];
  final todoBox = Hive.box("todobox");

  void createInitData() {
    toDoList = [];
  }

  void loadData() {
    toDoList = todoBox.get("todobox");
  }

  void updateData() {
    todoBox.put("todobox", toDoList);
  }
}
