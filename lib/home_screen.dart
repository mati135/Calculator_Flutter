import 'package:caluclator/components/buttons.dart';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_SrceenState();
}

class _Home_SrceenState extends State<Home_Screen> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            userinput.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            answer.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: 'AC',
                          onPress: () {
                            userinput = '';
                            answer = '';
                            setState(() {});
                          },
                          color: Color(0xffa5a5a5),
                          textColor: Colors.black,
                        ),
                        MyButton(
                          title: '+/−',
                          onPress: () {
                            userinput += '+/-';
                            setState(() {});
                          },
                          color: Color(0xffa5a5a5),
                        ),
                        MyButton(
                          title: '%',
                          onPress: () {
                            userinput += '%';
                            setState(() {});
                          },
                          color: Color(0xffa5a5a5),
                        ),
                        MyButton(
                          title: '÷',
                          onPress: () {
                            userinput += '/';
                            setState(() {});
                          },
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '7',
                          onPress: () {
                            userinput += '7';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '8',
                          onPress: () {
                            userinput += '8';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '9',
                          onPress: () {
                            userinput += '9';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'x',
                          onPress: () {
                            userinput += '*';
                            setState(() {});
                          },
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '4',
                          onPress: () {
                            userinput += '4';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '5',
                          onPress: () {
                            userinput += '5';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '6',
                          onPress: () {
                            userinput += '6';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '−',
                          onPress: () {
                            userinput += '-';
                            setState(() {});
                          },
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '1',
                          onPress: () {
                            userinput += '1';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '2',
                          onPress: () {
                            userinput += '2';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '3',
                          onPress: () {
                            userinput += '3';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+',
                          onPress: () {
                            userinput += '+';
                            setState(() {});
                          },
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '0',
                          onPress: () {
                            userinput += '0';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '.',
                          onPress: () {
                            userinput += '.';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'DEL',
                          onPress: () {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '=',
                          onPress: () {
                            equalpress();
                            setState(() {});
                          },
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalpress() {
    //  String finaluser = userinput.replaceAll('*', 'x');
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
    print(eval);
  }
}
