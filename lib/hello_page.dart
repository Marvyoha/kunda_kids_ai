import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kunda_kids_ai/hello_page_buttons.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.04),
                  Row(
                    children: [
                      Image.asset('lib/assets/hearts.png'),
                      SizedBox(width: size.width * 0.69),
                      // KID_PROFILE
                      Container(
                        height: size.height * 0.07,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.2), // Shadow color
                              spreadRadius: 1, // Spread radius
                              blurRadius: 4, // Blur radius
                              offset: const Offset(
                                  0, 3), // Offset in x and y direction
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                                color: const Color(0xff9D34A2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(
                              'lib/assets/kid-preview .png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 7),
                  //ROBOT IMAGE
                  Center(
                    child: SizedBox(
                      width: size.width * 0.7,
                      child: Stack(
                        children: [
                          Image.asset(
                            'lib/assets/hello page robot .png',
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 100, bottom: 0),
                            child: Container(
                              width: 167,
                              height: 53,
                              decoration: const ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Color(0xFFFFE586),
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Hi👋🏻, I am Kiddo \nYour new AI Friend  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  //IMAGE SUBTITLE
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Here are some things i can do',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Khmer',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 5,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFED1C24),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  //  BUTTONS
                  const HelloPageButtons(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: size.height * 0.01),
        // BLURRED BACKGROUND IMAGE
        Expanded(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.srcATop,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 5.0, sigmaY: 5.0), // Adjust blur intensity if needed
              child: Image.asset(
                'lib/assets/splscrnbm img_cut.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
