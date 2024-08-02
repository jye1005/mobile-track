import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String content;
  final int index;
  final Function(int, String) onUpdate; // 추가된 부분

  TodoItem(
      {required this.content,
      required this.index,
      required this.onUpdate,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFF5F5F5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(content, textAlign: TextAlign.start),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () async {
                  var result = await Navigator.pushNamed(
                    context,
                    '/modify-todo',
                    arguments: {'content': content, 'index': index},
                  );
                  if (result != null) {
                    Map resultMap = result as Map;
                    onUpdate(index, resultMap['content']);
                  }
                },
                child: const Text('수정', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('완료', style: TextStyle(color: Colors.black)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
