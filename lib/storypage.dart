import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color(0xF7FFFBEE),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.03),
              // BACK BUTTON
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff9D34A2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 28,
                        )),
                  ),
                ),
              ),
              // KUNDA KIDS LOGO
              Center(
                child: SizedBox(
                  width: 280,
                  height: 60.76,
                  child: Image.asset('lib/assets/kunda kids logo.png'),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              // TITLE
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('lib/assets/sun_mini.svg'),
                    SizedBox(width: size.width * 0.03),
                    const Text(
                      'Created By : (Name of user) ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Khmer',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                height: size.height * 0.6,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.09,
                    ),
                    Flexible(
                      flex: 5,
                      child: Expanded(
                        child: Scrollbar(
                          child: ListView(
                            children: const [
                              Text(
                                'Once upon a time there were three bears, who lived together in a house of their own in a wood. One of them was a little, \nsmall wee bear; one was a middle-sized bear, and the other was a great, huge bear.\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Khmer',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'One day, after they had made porridge for their breakfast, they walked out into the wood while the porridge was cooling. \nAnd while they were walking, \na little girl came into the house. \nThis little girl had golden curls that tumbled \ndown her back to her waist,\n and everyone called her by Goldilocks',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Khmer',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up_rounded,
                            size: 20,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //BLURRED BACKGROUND
              Expanded(
                child: SizedBox(
                  height: size.height * 0.01,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5),
                      BlendMode.srcATop,
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0), // Adjust blur intensity if needed
                      child: Image.asset(
                        'lib/assets/splscrnbm img_cut.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
