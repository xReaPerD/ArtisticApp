import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //title
              Text("Artistic",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),),

              Column(
                children: [
                  //buttons
                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade700,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white70)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Login",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white70),

                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Sign Up",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
