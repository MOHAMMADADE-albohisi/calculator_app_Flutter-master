import 'package:calculator_app/widgets/button_wdg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatoreApp extends StatefulWidget {
  const CalculatoreApp({Key? key}) : super(key: key);

  @override
  State<CalculatoreApp> createState() => _CalculatoreAppState();
}

class _CalculatoreAppState extends State<CalculatoreApp> {
  String exp = '';
  String top = '';
  int num1 = 0;

  int num2 = 0;

  String op = '';

  void numClick(String btnText) {
    if (btnText == '⌫') {
      setState(() {
        exp = "";
        top = '';
      });
      num1 = 0;
      num2 = 0;
    } else if (btnText == 'C') {
      setState(() {
        exp = "";
      });
    } else if (btnText == '%' ||
        btnText == '/' ||
        btnText == '×' ||
        btnText == '-' ||
        btnText == '+') {
      op = btnText;
      num1 = int.parse(exp);
      setState(() {
        exp = '';
        top = num1.toString();
        top += btnText;
      });
    } else if (btnText == '.') {
      if (exp.contains('.')) {
      } else {
        setState(() {
          exp += btnText;
        });
      }
    } else if (btnText == '=') {
      num2 = int.parse(exp);
      top += exp;
      switch (op) {
        case '+':
          {
            exp = (num1 + num2).toString();
          }
          break;
        case '×':
          {
            exp = (num1 * num2).toString();
          }
          break;
        case '-':
          {
            exp = (num1 - num2).toString();
          }
          break;
        case '%':
          {
            exp = (num1 % num2).toString();
          }
          break;
        case '/':
          {
            num2 == 0
                ? exp = 'invalid Operation'
                : exp = (num1 / num2).toString();
          }
          break;
        default:
          break;
      }
      setState(() {});
    } else {
      setState(() {
        exp += btnText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            width: 411,
            height: 150,
            child: Text(
              top,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            width: 411,
            height: 60,
            child: Text(
              exp,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          const Spacer(flex: 1),
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.backspace,
                  color: Colors.black54,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.backspace,
                  color: Colors.black54,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.calculate, color: Colors.black54),
              ),
              const Spacer(flex: 5),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.backspace, color: Colors.green),
              ),
            ],
          ),
          const Divider(
            thickness: 0.3,
            color: Colors.green,
            indent: 20,
            endIndent: 20,
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                  child: BottonWidgets(
                btnText: "C",
                btnColor: Colors.red,
                CallBack: numClick,
              )),
              Expanded(
                  child: BottonWidgets(
                btnText: "()",
                btnColor: Colors.green,
                CallBack: numClick,
              )),
              Expanded(
                  child: BottonWidgets(
                btnText: "%",
                btnColor: Colors.green,
                CallBack: numClick,
              )),
              Expanded(
                  child: BottonWidgets(
                      btnText: "÷",
                      btnColor: Colors.green,
                      CallBack: numClick)),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                  child: BottonWidgets(
                      btnText: "7",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "8",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "9",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "×",
                      btnColor: Colors.green,
                      CallBack: numClick)),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                  child: BottonWidgets(
                      btnText: "4",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "5",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "6",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "-",
                      btnColor: Colors.green,
                      CallBack: numClick)),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                  child: BottonWidgets(
                      btnText: "1",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "2",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "3",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "+",
                      btnColor: Colors.green,
                      CallBack: numClick)),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Expanded(
                  child: BottonWidgets(
                      btnText: "+/-",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "0",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: ".",
                      btnColor: Colors.black,
                      CallBack: numClick)),
              Expanded(
                  child: BottonWidgets(
                      btnText: "=",
                      btnColor: Colors.green,
                      CallBack: numClick)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
