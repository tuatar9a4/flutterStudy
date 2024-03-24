import 'package:flutter/material.dart';

class CurrentcyCard extends StatelessWidget {
  final String currencyName, currencyCount, currencyUnit;
  final bool isInverted;
  final IconData currencyIcon;
  final int offsetOrder;
  final blackColor = const Color(0xff1f2321);

  const CurrentcyCard({
    super.key,
    required this.currencyName,
    required this.currencyCount,
    required this.currencyUnit,
    required this.currencyIcon,
    required this.isInverted,
    required this.offsetOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offsetOrder * -25),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : blackColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currencyName,
                  style: TextStyle(
                    color: isInverted ? blackColor : Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(currencyCount,
                        style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 16,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(currencyUnit,
                        style: TextStyle(
                          color: isInverted
                              ? blackColor.withOpacity(0.8)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        )),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-8, 20),
                child: Icon(
                  currencyIcon,
                  color: isInverted ? blackColor : Colors.white,
                  size: 75,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
