import 'package:calculator_app/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15, vertical: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
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
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const Align(
                        alignment: Alignment.bottomRight,
                        child: const Text(
                          "56757",
                          style: TextStyle(
                            fontFamily: 'SFpro',
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
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
                              CustomIconButton(buttonicon: const Icon(CupertinoIcons.divide)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "7", onPressed: buttonPressed),
                              CustomButton(buttonText: "8", onPressed: buttonPressed),
                              CustomButton(buttonText: "9", onPressed: buttonPressed),
                              CustomIconButton(buttonicon: const Icon(CupertinoIcons.multiply))
                              //CustomButton(buttonText: "×", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "4", onPressed: buttonPressed),
                              CustomButton(buttonText: "5", onPressed: buttonPressed),
                              CustomButton(buttonText: "6", onPressed: buttonPressed),
                              CustomIconButton(buttonicon: const Icon(CupertinoIcons.minus))
                              //CustomButton(buttonText: "-", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomButton(buttonText: "1", onPressed: buttonPressed),
                              CustomButton(buttonText: "2", onPressed: buttonPressed),
                              CustomButton(buttonText: "3", onPressed: buttonPressed),
                              CustomIconButton(buttonicon: const Icon(CupertinoIcons.plus))
                              //CustomButton(buttonText: "+", textcolor: const Color(0xFF2A73FE), onPressed: buttonPressed),
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

                              Container(
                                width: 155,
                                height: 62, 
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2A73FE),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.equal),
                                  iconSize: 30, // Size of the icon itself
                                  color: Colors.white,
                                  //backgroundColor: Colors.grey[900],
                                )
                              )
                            // FilledButton(
                              //   onPressed: () {},
                              //   style: FilledButton.styleFrom(
                              //     backgroundColor: const Color(0xFF2A73FE),
                              //     shape:  RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(50)),
                              //     minimumSize: const Size(155, 62) 
                              //     ),

                              //   child: const Text(
                              //     "=",
                              //     style: TextStyle(
                              //       fontFamily: 'SFpro',
                              //       fontSize: 32,
                              //       color: Colors.white,
                              //     ),
                              //   )
                              // ),
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