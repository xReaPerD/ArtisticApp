import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_working_project/Pages/AddProfileImagePage.dart';
import 'package:main_working_project/Pages/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xFFE8A9A7), //peachy pink
          body: SizedBox(height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 60,),
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(padding: EdgeInsets.only(left: 20),
                                child: Text("Create\nAn Account",style:
                                TextStyle(
                                    fontSize: 45,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600
                                ),),
                              )
                          ),

                          const SizedBox(height: 30,),

                          Container(
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.pink.shade100.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.blueAccent,width: 1.5)
                            ),
                            child: const Padding(padding: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Username",
                                    border: InputBorder.none,
                                    icon: Icon(Icons.person)
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20,),

                          Container(
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.pink.shade100.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.blueAccent,width: 1.5)
                            ),
                            child: const Padding(padding: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    border: InputBorder.none,
                                    icon: Icon(Icons.email)
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20,),

                          Container(
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.pink.shade100.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.blueAccent,width: 1.5)
                            ),
                            child: const Padding(padding: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none,
                                    icon: Icon(Icons.lock)
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20,),

                          Container(
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.pink.shade100.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.blueAccent,width: 1.5)
                            ),
                            child: const Padding(padding: EdgeInsets.only(left: 10,right: 10),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Confirm Password",
                                    border: InputBorder.none,
                                    icon: Icon(Icons.lock)
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 40,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const AddProfileImagePage()));
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
                              "Continue",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Padding(padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => const HomePage()));
                          },
                          child: Container(
                            width: 50,
                            height: 50,
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
                            child: const Icon(Icons.arrow_back),
                          ),
                        )
                      ),
                      )
                    ],
                  ),
                )),
          )
        ),
    );
  }
}
