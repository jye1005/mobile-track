import 'package:flutter/material.dart';
import 'widgets/Todo_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/todo-list',
        routes: {
          '/todo-list': (context) => TodoListPage(),
          '/create-todo': (context) => const CreateTodoPage(),
          '/modify-todo': (context) => const ModifyTodoPage(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ));
  }
}

class TodoListPage extends StatelessWidget {
  final List<String> data = [
    'Todo Item 1',
    'Todo Item 2',
    'Todo Item 3',
    'Todo Item 4',
    'Todo Item 5',
    'Todo Item 6',
    'Todo Item 7',
    'Todo Item 8',
    'Todo Item 9',
    'Todo Item 10',
  ];

  TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('First Page'), backgroundColor: Colors.white),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) =>
              TodoItem(content: data[index], index: index),
          itemCount: data.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/create-todo');
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('생성하기'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: '할 일을 입력해주세요',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('할 일 추가', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

class ModifyTodoPage extends StatelessWidget {
  const ModifyTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    String todoContent = args['content'];

    TextEditingController controller = TextEditingController(text: todoContent);

    return Scaffold(
      appBar: AppBar(
        title: Text('투두 수정하기'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: '투두 내용을 수정해주세요',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('투두가 수정되었습니다!')));
              },
              child: Text('수정 완료', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
