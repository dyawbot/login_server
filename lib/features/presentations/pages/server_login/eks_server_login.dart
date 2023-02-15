// import 'dart:ffi';
import 'dart:math' as math;

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:login_server/features/presentations/constants/colors.dart';
import 'package:login_server/features/presentations/constants/my_styles.dart';
import 'package:login_server/features/presentations/widgets/constant_strings.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

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
    double _titleContainer = _height * 0.35;
    bool showFloatingButton = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      // debugShowCheckedModeBanner: false,

      body: SafeArea(
        child: Container(
          width: _width,
          height: _height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                stops: [
                  0.01,
                  0.5,
                ],
                colors: [
                  colorTop,
                  colorBot,
                ]),
          ),
          child: Column(
            children: [
              Container(
                width: _width,
                height: _titleContainer,
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
                        )),
                  ],
                ),
              ),
              Expanded(
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Stack(children: [
                      Container(
                        width: _width,
                        height: _height -
                            _titleContainer -
                            MediaQuery.of(context).padding.top,
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(50)),
                          color: colorWhite,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(11, -11),
                              blurRadius: 22,
                              color: colorNotSoBlack,
                              inset: true,
                            ),
                            BoxShadow(
                              offset: Offset(-11, 11),
                              blurRadius: 22,
                              color: colorNotSoWhite,
                              inset: true,
                            ),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20, right: 20),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            width: _width,
                                            height: 70,
                                            child: const Text(
                                                serverLoginMessage,
                                                style: MyTextStyle
                                                    .headlineSecondary),
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
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.lightBlueAccent,
                                                  width: 2)),
                                          labelText: 'Server Address',
                                          prefixIcon: Icon(Icons.http),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 35),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                      child: const Text(
                                        "NEXT",
                                        style: MyTextStyle.headlinePrimary,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: Visibility(
      //   visible: !showFloatingButton,
      //   child: SizedBox(
      //     height: 50,
      //     width: MediaQuery.of(context).size.width - 40,
      //     child: FloatingActionButton(
      //       child: const Text(
      //         "NEXT",
      //         style: MyTextStyle.headlinePrimary,
      //       ),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       backgroundColor: colorTop,
      //       onPressed: () {
      //         _connect(); //task to execute when this button is pressed
      //       },
      //     ),
      //   ),
      // ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // bottomNavigationBar: Container(
      //   height: 0,
      //   // color: colorBlack,
      //   // color: Color(0x00000000),
      //   // decoration: BoxDecoration(color: colorPrimaryLight),
      //   // margin: EdgeInsets.only(bottom: 1),
      // ),
    );
  }

  void _connect() {
    print(_serverController.text);
    // String _serverString = ""
  }
}
