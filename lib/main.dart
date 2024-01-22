import 'package:flutter/material.dart';
import 'package:occasion_widget/models/horizontal_box.dart';
import 'package:occasion_widget/models/vertical_box.dart';
import 'package:occasion_widget/widget/occasion.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Occasion(
        spaceBetween: 20,
        horizontalBoxShadow: const BoxShadow(
          color: Color(0x1EF9C004),
          blurRadius: 100,
          spreadRadius: 10,
          offset: Offset(0, 0),
        ),
        verticalBoxShadow: const BoxShadow(
          color: Color(0x1EF9C004),
          blurRadius: 100,
          spreadRadius: 10,
          offset: Offset(0, 0),
        ),
        horizontalBox: HorizontalBox(
          title: 'اعتکاف',
          titleStyle: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w900,
            fontFamily: 'Kalameh',
          ),
          subtitile: 'فرصتی برای خودشناسی',
          subtitileStyle: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            height: 1.1,
            fontWeight: FontWeight.w900,
            fontFamily: 'Kalameh',
          ),
          boxSize: Size(MediaQuery.sizeOf(context).width * 0.35, 320),
          decoration: BoxDecoration(
            color: const Color(0xFF237A65),
            borderRadius: BorderRadius.circular(50),
          ),
          icon: Image.asset(
            'assets/images/ramadan.png',
            width: 100,
            height: 100,
          ),
          onBoxClick: () {},
          onSubtitleClick: () {},
          onTitleClick: () {},
        ),
        verticalBox: VerticalBox(
          background: Opacity(
            opacity: 0.10,
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/pattern.png',
              width: double.infinity,
              height: 350,
            ),
          ),
          boxSize: const Size(double.infinity, 220),
          decoration: const BoxDecoration(color: Color(0xFFF9C004)),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(30, 0, 0, 0),
                    blurRadius: 100,
                    spreadRadius: 20,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/god_chosen.png',
                    width: 75,
                  ),
                  const Text(
                    'منتخب خدا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Vazir',
                      color: Color(0xFF6C6C6C),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(30, 0, 0, 0),
                    blurRadius: 100,
                    spreadRadius: 20,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/success.png',
                    width: 75,
                  ),
                  const Text(
                    'موفقیت',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Vazir',
                      color: Color(0xFF6C6C6C),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        directionality: TextDirection.rtl,
        isScrolabel: true,
      ),
    );
  }
}
