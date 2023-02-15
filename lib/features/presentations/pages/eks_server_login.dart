import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_server/features/presentations/constants/colors.dart';
import 'package:login_server/features/presentations/constants/my_styles.dart';
import 'package:login_server/features/presentations/widgets/constant_strings.dart';

class ServerLogin extends StatefulWidget {
  const ServerLogin({super.key});

  @override
  State<ServerLogin> createState() => _ServerLoginState();
}

class _ServerLoginState extends State<ServerLogin> {
  final TextEditingController _serverController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    bool showFloatingButton = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            width: _width,
            height: _height * 0.35,
            decoration:
                const BoxDecoration(color: colorPrimary, boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(5, 5)),
            ]
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular(30),
                    //   bottomRight: Radius.circular(30)
                    // )

                    ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: (_height * 0.35) / 2,
                  // padding: const EdgeInsets.only(top: 0.0),
                  child: Image.asset("assets/logo/logo.png"),
                ),
                Positioned(
                    left: 20,
                    top: (_height * 0.35) / 1.25,
                    child: const Text(
                      "Enter your server address here!",
                      style: MyTextStyle.headlinePrimary,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: _width,
                    height: 70,
                    child: const Text(serverLoginMessage,
                        style: MyTextStyle.headlineSecondary),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: TextField(
                controller: _serverController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2)),
                  labelText: 'Server Address',
                  prefixIcon: Icon(Icons.http),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          )
        ]),
      ),
      floatingActionButton: Visibility(
        visible: !showFloatingButton,
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width - 40,
          child: FloatingActionButton(
            child: const Text(
              "NEXT",
              style: MyTextStyle.headlinePrimary,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: colorPrimary,
            onPressed: () {
              _connect(); //task to execute when this button is pressed
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Container(
        height: 10,
        // color: colorPrimaryLight,
        // decoration: BoxDecoration(color: colorPrimaryLight),
        margin: EdgeInsets.only(bottom: 11),
      ),
    );
  }

  void _connect() {
    print(_serverController.text);
    // String _serverString = ""
  }
}
