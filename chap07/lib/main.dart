import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
  ));
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();
  String _errorMessage = "";

  void _navigateToSecondPage(BuildContext context, String operator) {
    int? numberOne = int.tryParse(_controllerOne.text);
    int? numberTwo = int.tryParse(_controllerTwo.text);
    if (numberOne == null ||
        numberTwo == null ||
        numberOne < 1 ||
        numberOne > 100 ||
        numberTwo < 1 ||
        numberTwo > 100) {
      setState(() {
        _errorMessage = "입력은 1부터 100 사이의 숫자여야 합니다.";
      });
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => SecondPage(
              numberOne: numberOne, numberTwo: numberTwo, operator: operator)),
    );
  }

  void _clearAllFields() {
    _controllerOne.clear();
    _controllerTwo.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('First Page', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: Colors.black),
            onPressed: _clearAllFields,
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 0.0, bottom: 150.0), // 상단 패딩 조정
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 가로 방향으로 왼쪽 정렬
              children: [
                Text(
                  '숫자 연산기',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _controllerOne,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Number 1:',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _controllerOne.clear(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _controllerTwo,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Number 2:',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _controllerTwo.clear(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (_errorMessage.isNotEmpty)
                  Text(_errorMessage,
                      style: TextStyle(color: Colors.red, fontSize: 14)),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () => _navigateToSecondPage(context, '+'),
                        child: Text('+'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                        )),
                    ElevatedButton(
                        onPressed: () => _navigateToSecondPage(context, '-'),
                        child: Text('-'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int numberOne;
  final int numberTwo;
  final String operator;

  const SecondPage(
      {Key? key,
      required this.numberOne,
      required this.numberTwo,
      required this.operator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int result =
        operator == '+' ? numberOne + numberTwo : numberOne - numberTwo;

    return Scaffold(
      appBar: AppBar(
        title: Text('두 번째 페이지'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Text('결과: $result', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
