import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorView extends StatelessWidget {
const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.amber[50],
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
                  child: SvgPicture.asset(
                    'assets/errors/erro_cancel.svg',
                  ),
                ),
                 Padding(
                padding: const EdgeInsets.only(
                    top: 38 ),
                child: Container(
                  height: 58,
                  width: 58 ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          8 ),
                      color: const Color(0xff132137),
                    ),
                    child: InkWell(
                  key: const ValueKey('next button'),
                  onTap: (){},
                  child: 
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                  ),
                ),
                  ),
                  ),
            ],
          ),
        ),
    );
    }
}
