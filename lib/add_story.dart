import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'storypage.dart';

class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  List<Map<String, dynamic>> colorData = [
    {
      "color": const Color(0xFFB1CBFC),
      "borderColor": const Color(0xFF3D70D1),
    },
    {
      "color": const Color(0xF7FFEBA5),
      "borderColor": const Color(0xFFFFCE56),
    },
    {
      "color": const Color(0xFFC1EFC7),
      "borderColor": const Color(0xFF5FB26A),
    },
    {
      "color": const Color(0xFFFFE5D2),
      "borderColor": const Color(0xFFF53E28),
    },
    {
      "color": const Color.fromARGB(255, 196, 162, 201), // Add the new color
      "borderColor": const Color(0xFF6A1B9A), // Add the new border color
    },
  ];

  List<Map<String, dynamic>> textData = [
    {"title": 'Superhero'},
    {"title": 'Fairytale'},
    {"title": 'History'},
    {"title": 'African'},
    {"title": 'Christian'},
  ];

  Widget buildColorContainer(int index, Size size) {
    Map<String, dynamic> colorInfo = colorData[index];
    Map<String, dynamic> textInfo = textData[index];

    return GestureDetector(
      onTap: () {
        // Show the popup with the text field when tapped
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // Set the border radius for the dialog
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: const Color(0xF7FFFBEE),
              // Use textInfo['title'] directly without curly braces
              title: Text('${textInfo['title']} story about....'),
              content: const TextField(
                decoration: InputDecoration(hintText: "Type something..."),
              ),
              actions: <Widget>[
                TextButton(
                  // Set text color for the OK button
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("OK"),
                  onPressed: () {
                    // Add your logic here to handle the text entered
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StoryPage(),
                      ),
                    );
                  },
                ),
                TextButton(
                  // Set text color for the Cancel button
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Container(
        width: 160,
        height: 45,
        decoration: ShapeDecoration(
          color: colorInfo["color"],
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: colorInfo["borderColor"],
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Center(
          child: Text(
            textInfo['title'],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Khmer',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color: const Color(0xF7FFFBEE),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              // TOPBAR
              Row(
                children: [
                  const BackButton(),
                  SizedBox(width: size.width * 0.69),
                  GestureDetector(
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.13,
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
                          height: size.height * 0.07,
                          width: size.width * 0.14,
                          decoration: BoxDecoration(
                            color: const Color(0xff9D34A2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            'lib/assets/kid-preview .png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
              // HEADER
              const Text(
                'What type of story do you want?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Khmer',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              // Horizontal carousel
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: textData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0 : size.width * 0.03,
                      ),
                      child: buildColorContainer(index, size),
                    );
                  },
                ),
              ),
              SizedBox(height: size.height * 0.07),
              // CHOOSE RANDOM
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 180,
                  height: 51,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF5C846),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('lib/assets/book-outline.svg'),
                          const SizedBox(width: 5),
                          const Text(
                            'Choose Random',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Khmer',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              //ADD MORE STORIES
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(left: size.width * 0.3),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'lib/assets/plus circle.svg',
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Add more stories',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF847E7E),
                                fontSize: 18,
                                fontFamily: 'Khmer',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: size.height *
                    0.4, // Set a specific height for the Container
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Scrollbar(
                      child: ListView(
                        children: [
                          Container(
                            width: 180,
                            height: 51,
                            decoration: BoxDecoration(
                              color: const Color(0xF7FFEBA5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 17.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '1.     ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 40),
                                    Column(children: [
                                      SizedBox(height: 6),
                                      Text(
                                        'Maua and the Garden of Plenty',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Khmer',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'By: (USER NAME)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Khmer',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Container(
                            width: 180,
                            height: 51,
                            decoration: BoxDecoration(
                              color: const Color(0xF7FFEBA5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 17.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '2.     ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 40),
                                    Column(children: [
                                      SizedBox(height: 6),
                                      Text(
                                        'Goldilocks and The Three Bears',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Khmer',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'By: (USER NAME)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Khmer',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Container(
                            width: 180,
                            height: 51,
                            decoration: BoxDecoration(
                              color: const Color(0xF7FFEBA5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 17.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '3.     ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Khmer',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Column(children: [
                                        SizedBox(height: 6),
                                        Text(
                                          'Red Riding Hood and The Three Pigs',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Khmer',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          'By: (USER NAME)',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Khmer',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Add more items as needed
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // BLURRED BACKGROUND IMAGE
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
