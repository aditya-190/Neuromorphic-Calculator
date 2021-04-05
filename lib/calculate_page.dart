import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neuromorphic_calculator/calculator_brain.dart';
import 'round_button.dart';
import 'constants.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';
  CalculatorBrain calc = CalculatorBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF0000000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0, right: 20.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                      maxHeight: 70,
                    ),
                    child: Text(
                      result,
                      style: resultColor,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 30.0, right: 30.0),
                  child: Text(
                    calc.resultOperationText,
                    style: textColor,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonText: 'AC',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('AC');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '+/-',
                      colorText: numberColor,
                      buttonWidth: 8,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('+/-');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '%',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('%');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '÷',
                      buttonWidth: 8,
                      colorText: symbolColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('÷');
                        });
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonText: '7',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('7');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '8',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('8');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '9',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('9');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: 'x',
                      buttonWidth: 8,
                      colorText: symbolColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('x');
                        });
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonText: '4',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('4');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '5',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('5');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '6',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('6');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '－',
                      buttonWidth: 8,
                      colorText: symbolColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('－');
                        });
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonText: '1',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('1');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '2',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('2');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '3',
                      buttonWidth: 8,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('3');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '＋',
                      buttonWidth: 8,
                      colorText: symbolColor,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('＋');
                        });
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundButton(
                      buttonText: '0',
                      buttonWidth: 2.9,
                      colorText: numberColor,
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(40.0),
                      ),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('0');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '.',
                      colorText: numberColor,
                      buttonWidth: 8,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('.');
                        });
                      },
                    ),
                    RoundButton(
                      buttonText: '＝',
                      colorText: symbolColor,
                      buttonWidth: 8,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('＝');
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
