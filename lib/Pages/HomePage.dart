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
        backgroundColor: const Color(0xFFE8A9A7), //peachy pink
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Title
                const Column(
                  children: [
                    Text(
                      "ᒍᑌᔕT◦ᗩᖇT",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 44,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Just start with Just◦Art",style:
                      TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic
                      ),)
                  ],
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
                          color: Colors.blueAccent.shade100,
                          border: Border.all(color: Colors.black87,width: 1),
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
                            "Create an Account",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account ? ",style:
                          TextStyle(
                            color: Colors.black87
                          ),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const SignUpPage()));
                          },
                          child: const Text("Sign in ",style:
                          TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
