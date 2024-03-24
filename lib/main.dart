import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //android material Theme can change cupatino theme of ios
      home: Scaffold(
        // parameter : appbar , body , bottomNavigaion 을 사용하여 상, 중, 하 로 구분 할 수 있는 Widget
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          //ScrollView default Vertical 지정 scrollDirection parameter ->Axis.horizontal 로 가로 스크롤 변경 가능
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal:
                    20), //padding EdgeInsets : symmeteric->vertical 과 hotizontal 를 지정할 수 있는 함수 all , only 등 이 있음
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //crossAxis Column 의 경우 가로, Row 의 경우 세로 정렬
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .end, //mainAxis Column 의 경우 세로, Row 의 경우 가로 정렬
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey , Selena",
                          style: TextStyle(
                              // 텍스트의 크기, 색상, 두께 등 조절하는 parameter
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w400),
                        ),
                        Text('welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 592',
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "Transfer",
                      backgroundColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                        text: "Request",
                        backgroundColor: Color(0xff1f2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const CurrentcyCard(
                  currencyName: 'Euro',
                  currencyCount: '4 429',
                  currencyUnit: 'EUR',
                  currencyIcon: Icons.euro_rounded,
                  isInverted: false,
                  offsetOrder: 0,
                ),
                const CurrentcyCard(
                  currencyName: 'Bitcoin',
                  currencyCount: '9 784',
                  currencyUnit: 'BTC',
                  currencyIcon: Icons.currency_bitcoin,
                  isInverted: true,
                  offsetOrder: 1,
                ),
                const CurrentcyCard(
                  currencyName: 'Dollar',
                  currencyCount: '4 429',
                  currencyUnit: 'US',
                  currencyIcon: Icons.attach_money_rounded,
                  isInverted: false,
                  offsetOrder: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
