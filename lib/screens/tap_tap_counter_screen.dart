import 'package:flutter/material.dart';
import 'package:tap_tap_money_counter/data.dart';
import 'package:tap_tap_money_counter/screens/widgets/money_button.dart';

class TapTapCounterScreen extends StatefulWidget {
  const TapTapCounterScreen({super.key});

  @override
  State<TapTapCounterScreen> createState() => _TapTapCounterScreenState();
}

class _TapTapCounterScreenState extends State<TapTapCounterScreen> {
  List<double> moneySequence = [0];
  double moneyCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.primary,
        leading: IconButton(
          icon: const Icon(Icons.history),
          onPressed: () {},
        ),
        title: Text("€${moneyCounter.toStringAsFixed(2)}"),
        actions: [IconButton(onPressed: () {
          setState(() {
            moneyCounter = 0;
            moneySequence = [];
          });
        }, icon: Icon(Icons.restart_alt_outlined))],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 0.01,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/0,01.png"),
                ),
                MoneyButton(
                  value: 0.02,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/0,02.png"),
                ),
                MoneyButton(
                  value: 0.05,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/0,05.png"),
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: Row(
          //     children: [

          //     ],
          //   ),
          // ),
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 0.10,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/0,1.png"),
                ),
                MoneyButton(
                  value: 0.20,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/0,2.png"),
                ),
                MoneyButton(
                  value: 0.50,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/0,5.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 1,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/1.png"),
                ),
                MoneyButton(
                  value: 2,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/2.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 5,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/5.png"),
                ),
                MoneyButton(
                  value: 10,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/10.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 20,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/20.jpg"),
                ),
                MoneyButton(
                  value: 50,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/50.jpeg"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 100,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/100.jpeg"),
                ),
                MoneyButton(
                  value: 200,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/200.png"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                MoneyButton(
                  value: 500,
                  onPressed: (value) {
                    setState(() {
                      moneyCounter += value;
                      moneySequence.add(value);
                    });
                  },
                  imagePath: ("assets/euro/500.png"),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (moneySequence.isNotEmpty) {
                          moneyCounter -= moneySequence.removeLast();
                        }
                      });
                    },
                    child: Icon(Icons.undo),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Text("€${moneyCounter.toStringAsFixed(2)}"),
    );
  }
}
