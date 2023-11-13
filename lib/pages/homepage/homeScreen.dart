import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'homeScreenVm.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenVM _instance = HomeScreenVM();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D031B),
      appBar: AppBar(
        title: const Text("XO game"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Observer(builder: (context) {
          return ListView(
            children: [
              Observer(builder: (context) {
                return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 400,
                    child: GridView.builder(
                      itemCount: _instance.collectionOfValues.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return DecoratedBox(
                          decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                    color: Color(0xff0D031B),
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xff0D031B),
                                  ))),
                          child: IconButton(
                              color: const Color(0xff0D031B),
                              onPressed: () => _instance.tapItem(index),
                              icon: Observer(builder: (context) {
                                return _instance.collectionOfValues[index] == ""
                                    ? const Icon(
                                        Icons.edit,
                                        size: 25,
                                      )
                                    : _instance.collectionOfValues[index] ==
                                            "cross"
                                        ? const Icon(
                                            Icons.close,
                                            size: 35,
                                            color: Colors.orangeAccent,
                                          )
                                        : const Icon(
                                            Icons.circle_outlined,
                                            size: 35,
                                            color: Colors.redAccent,
                                          );
                              })),
                        );
                      },
                    ));
              }),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: _instance.resetAll,
                      child: const Text(
                        "Reset",
                        style: TextStyle(color: Color(0xff0D031B)),
                      ))),
              const SizedBox(
                height: 90,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: _instance.winner == "Cross is the winner"
                            ? "Cross"
                            : _instance.winner == "Circle is the winner"
                                ? "Circle"
                                : _instance.winner == "Match is Drawed"
                                    ? "Match"
                                    : "",
                        style: TextStyle(
                            color: _instance.winner == "Cross is the winner"
                                ? Colors.orangeAccent
                                : _instance.winner == "Circle is the winner"
                                    ? Colors.redAccent
                                    : Colors.white,
                            fontFamily: "Lato",
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: _instance.winner == "Cross is the winner"
                            ? " is the winner"
                            : _instance.winner == "Circle is the winner"
                                ? " is the Winner"
                                : _instance.winner == "Match is Drawed"
                                    ? " is Drawed"
                                    : "",
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                            fontSize: 20,
                            fontWeight: FontWeight.w500))
                  ]),
                ),
              )
            ],
          );
        }),
      )),
    );
  }
}
