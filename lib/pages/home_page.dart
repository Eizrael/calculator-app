import 'package:calculator_app/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();

  void buttonPressed (String value) {
    setState(() {
      textController.text += value;
    });

  }

  void clear (String value) {
    setState(() {
      textController.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextField(
                      controller: textController,
                      readOnly: true,
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.ltr,
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      style: const TextStyle(
                        fontFamily: 'SFpro',
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ),
            ),
            Flexible(
              flex: 1, 
              child: Container(
                color: Colors.black,
                child: SafeArea(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "C", textcolor: const Color(0xFFF04C26), onPressed: clear),
                              CustomButton(buttonText: "%", onPressed: buttonPressed),
                              CustomIconButton(),
                              CustomButton(buttonText: "÷", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "7", onPressed: buttonPressed),
                              CustomButton(buttonText: "8", onPressed: buttonPressed),
                              CustomButton(buttonText: "9", onPressed: buttonPressed),
                              CustomButton(buttonText: "×", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "4", onPressed: buttonPressed),
                              CustomButton(buttonText: "5", onPressed: buttonPressed),
                              CustomButton(buttonText: "6", onPressed: buttonPressed),
                              CustomButton(buttonText: "-", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "1", onPressed: buttonPressed),
                              CustomButton(buttonText: "2", onPressed: buttonPressed),
                              CustomButton(buttonText: "3", onPressed: buttonPressed),
                              CustomButton(buttonText: "+", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "0", onPressed: buttonPressed),
                              CustomButton(buttonText: ".", onPressed: buttonPressed),
                              FilledButton(
                                onPressed: () {},
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF2A73FE), // Set background color
                                  shape:  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                  minimumSize: const Size(155, 62) 
                                  ),
                                child: const Text(
                                  "=",
                                  style: TextStyle(
                                    fontFamily: 'SFpro',
                                    fontSize: 32,
                                    color: Colors.white, // Set text color
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}