import 'package:flutter/material.dart';
import 'package:kunda_kids_ai/add_audiobook.dart';
import 'package:kunda_kids_ai/add_song.dart';
import 'package:kunda_kids_ai/add_story.dart';

class HelloPageButtons extends StatelessWidget {
  const HelloPageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          // TELL A STORY
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddStory()));
            },
            child: SizedBox(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 275,
                          height: 78,
                          decoration: const ShapeDecoration(
                            color: Color(0xF7FFF6D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: size.width * 0.04),
                              Image.asset('lib/assets/book icon.png'),
                              const SizedBox(width: 18),
                              //TEXTS
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Tell a Story',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(text: '\n'), // Adding a new line
                                    TextSpan(
                                      text:
                                          'I can tell you some nice stories about\njinjas.....',
                                      style: TextStyle(
                                        color: Color(0xFF262525),
                                        fontSize: 12,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: 30,
                            height: 78,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFF5C846),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Image.asset('lib/assets/arrow-right.png'))
                      ],
                    ),
                  ),
                  Positioned(
                    left: 15,
                    child: Container(
                      width: 39,
                      height: 37.44,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF5C846),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(2, 5),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Knewave',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          // Sing a song
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddSong()));
            },
            child: SizedBox(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                            width: 30,
                            height: 78,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF5FB26A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Image.asset('lib/assets/arrow-left.png')),
                        Container(
                          width: 275,
                          height: 78,
                          decoration: const ShapeDecoration(
                            color: Color(0xF7FFF6D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: size.width * 0.04),
                              Image.asset('lib/assets/music icon.png'),
                              const SizedBox(width: 18),
                              //TEXTS
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Sing a Song',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(text: '\n'), // Adding a new line
                                    TextSpan(
                                      text:
                                          'I will sing your best\n cartoon songs for you......',
                                      style: TextStyle(
                                        color: Color(0xFF262525),
                                        fontSize: 12,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 30,
                    child: Container(
                      width: 39,
                      height: 37.44,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF5FB26A),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(2, 5),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Knewave',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),

          // Audio book
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddAudiobook()));
            },
            child: SizedBox(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 275,
                          height: 78,
                          decoration: const ShapeDecoration(
                            color: Color(0xF7FFF6D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: size.width * 0.04),
                              Image.asset('lib/assets/fan icon.png'),
                              const SizedBox(width: 18),
                              //TEXTS
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Audiobook',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(text: '\n'), // Adding a new line
                                    TextSpan(
                                      text:
                                          'I can read stories for you with\n cool pictures........',
                                      style: TextStyle(
                                        color: Color(0xFF262525),
                                        fontSize: 12,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: 30,
                            height: 78,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFDB3832),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Image.asset('lib/assets/arrow-right.png'))
                      ],
                    ),
                  ),
                  Positioned(
                    left: 15,
                    child: Container(
                      width: 39,
                      height: 37.44,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFDB3832),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(2, 5),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Knewave',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
