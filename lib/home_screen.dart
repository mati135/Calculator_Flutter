import 'package:caluclator/components/buttons.dart';
import 'package:caluclator/constant.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_SrceenState();
}

class _Home_SrceenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Column(),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: 'AC',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '+/-',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '%',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '÷',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '7',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '8',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '9',
                          onPress: () {},
                        ),
                        MyButton(
                          title: 'x',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '4',
                          onPress: () {
                            print('tap');
                          },
                        ),
                        MyButton(
                          title: '5',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '6',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '-',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '1',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '2',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '3',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '+',
                          onPress: () {},
                          color: Color(0xffffa00a),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '0',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '-',
                          onPress: () {},
                        ),
                        MyButton(
                          title: 'DEL',
                          onPress: () {},
                        ),
                        MyButton(
                          title: '=',
                          onPress: () {},
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
}
