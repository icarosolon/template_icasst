import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorView extends StatelessWidget {
const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.amber[30],
      body: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  "Relaxe",
                 style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore",
                      textAlign: TextAlign.center,
                    ),
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 350, maxHeight: 250),
                  child: /* Image.asset('assets/errors/erro_cancel.png',
                    fit: BoxFit.contain,
                  ), */
                  SvgPicture.asset(
                    'assets/errors/erro_cancel.svg',
                  ),
                ),
            ],
          ),
        ),
    );
    }
}
