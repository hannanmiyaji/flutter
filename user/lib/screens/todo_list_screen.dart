import 'package:flutter/material.dart';
import 'package:user/screens/add_new_todo_screen.dart';
import 'package:user/models/todo.dart';
import 'package:user/screens/update_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}
final List<Todo> listOfTodo = [];

void _addTodo(Todo todo) {
  listOfTodo.add(todo);
  setState(() {});
}

void setState(Null Function() param0) {
}

void _deleteTodo(int index, Todo todo) {
  listOfTodo.removeAt(index);
  setState(() {});
}

void _updateTodo(int index, Todo todo) {
  listOfTodo[index] = todo;
  setState(() {});
}

void _updateTodoStatus(int index, TodoStatus status) {
  listOfTodo[index].status = status;
  setState(() {});
}

class _TodoListScreenState extends State<TodoListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Visibility(
        visible: listOfTodo.isNotEmpty,
        replacement: const Center(
          child: Text('Empty list'),
        ),
        child: ListView.builder(
            itemCount: listOfTodo.length,
            itemBuilder: (context, index) {
              Todo todo = listOfTodo[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text(todo.description),
                leading: Text(todo.status.toString()),
                trailing: Wrap(
                  children: [
                    IconButton(
                      onPressed: () {
                        _deleteTodo(index, todo);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    IconButton(
                      onPressed: () => _showChangesStatusDialog(index),
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateTodoScreen(
                        todo: todo,
                        onUpdateTodo: ( Todo updatedTodo) {
                          _updateTodo(index, updatedTodo);

                        },
                      ),
                    ),
                  );
                },
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Todo? todo = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddNewTodoScreen()));

          if (todo != null) {
            _addTodo(todo);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showChangesStatusDialog(int index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Change Status'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('Idle'),
                  onTap: () {
                    _onTapUpdateStatusButton(index, TodoStatus.idle);
                  },
                ),
                Divider(height: 0),
                ListTile(
                  title: Text('In Progress'),
                  onTap: () {
                    _onTapUpdateStatusButton(index, TodoStatus.inProgress);
                  },
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  title: Text('Done'),
                  onTap: () {
                    _onTapUpdateStatusButton(index, TodoStatus.done);
                  },
                ),
              ],
            ),
          );
        });
  }

  void _onTapUpdateStatusButton(int index, TodoStatus status) {
    _updateTodoStatus(index, status);
    Navigator.pop(context);
  }
}
