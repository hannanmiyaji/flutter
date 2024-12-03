import 'package:user/models/todo.dart';

class TodoManager {
  final List<Todo> _listOfTodo = [];

  void addTodo(Todo todo) {
    _listOfTodo.add(todo);
  }

  void deleteTodo(int index, Todo todo) {
    _listOfTodo.removeAt(index);
  }

  void updateTodo(int index, Todo todo) {
    _listOfTodo[index] = todo;
  }

  void updateTodoStatus(int index, TodoStatus status) {
    _listOfTodo[index].status = status;
  }
}
