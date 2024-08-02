import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String content;
  final int index; // Ensure this is added if not already present

  TodoItem({required this.content, required this.index, Key? key})
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
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/modify-todo',
                      arguments: {'content': content, 'index': index},
                    );
                  },
                  child:
                      const Text('수정', style: TextStyle(color: Colors.black))),
              TextButton(
                  onPressed: () {
                    // Implement deletion or completion functionality
                  },
                  child:
                      const Text('완료', style: TextStyle(color: Colors.black))),
            ],
          )
        ],
      ),
    );
  }
}
