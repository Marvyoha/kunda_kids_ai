import 'package:flutter/material.dart';

import 'hello_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(
        const Duration(milliseconds: 1500)); // Delay for 1.5 seconds
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HelloPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.37),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.3,
                width: size.width * 0.61,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                      width: size.width * 0.6,
                      child: Image.asset('lib/assets/kunda kids logo.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.5),
                      child: const Text(
                        'Kiddo',
                        style: TextStyle(
                          color: Color(0xFF9D34A2),
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.16,
              ),
              Expanded(
                child: Image.asset(
                  'lib/assets/splscrnbm img.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
