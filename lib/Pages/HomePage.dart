import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_working_project/Pages/LoginPage.dart';
import 'package:main_working_project/Pages/SignUpPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [CupertinoColors.systemPink,Colors.pink.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Title
                const Text(
                  "Artistic",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Column(
                  children: [
                    // Buttons
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      child: Container(
                        width: 260,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          border: Border.all(color: Colors.white70),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: CupertinoColors.darkBackgroundGray.withOpacity(0.3),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25,),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SignUpPage()));
                      },
                      child: Container(
                        width: 260,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.shade100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: CupertinoColors.darkBackgroundGray),
                          boxShadow: [
                            BoxShadow(
                              color: CupertinoColors.darkBackgroundGray.withOpacity(0.4),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: CupertinoColors.darkBackgroundGray,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
