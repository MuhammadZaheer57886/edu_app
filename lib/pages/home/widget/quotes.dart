import 'dart:async';

import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _selectedPromo = 0;

  // this function is for small circle on quotes images
  Widget createCircle(bool iscurrent) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: iscurrent ? 12 : 8,
      width: iscurrent ? 12 : 8,
      decoration: BoxDecoration(
          color: iscurrent ? Colors.amber : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

//this list is for quotes imgs
  final List<Image> widgetList = [
    Image.asset('assets/img/quotes/quote1.webp'),
    Image.asset('assets/img/quotes/quote2.webp'),
    Image.asset('assets/img/quotes/quote3.webp'),
    Image.asset('assets/img/quotes/quote4.webp'),
    Image.asset('assets/img/quotes/quote5.webp'),
  ];

  late Timer timer;
  final PageController controller = PageController();
//automatic timer
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_selectedPromo < 4) {
        _selectedPromo++;
      } else {
        _selectedPromo = 0;
      }
      if (controller.positions.isNotEmpty) {
        controller.animateToPage(_selectedPromo,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutExpo);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 225,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          PageView.builder(
            controller: controller,
            itemCount: widgetList.length,
            itemBuilder: (context, index) {
              return widgetList[index];
            },
            onPageChanged: (int selectedPage) {
              setState(() {
                _selectedPromo = selectedPage;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < widgetList.length; index++)
                  if (index == _selectedPromo) ...[createCircle(true)] else
                    createCircle(false)
              ],
            ),
          ),
        ]
      )
    );
  }
}
