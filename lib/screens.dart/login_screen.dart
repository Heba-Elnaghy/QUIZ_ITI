import 'package:flutter/material.dart';

import 'category_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ghost.png',
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).height * 0.4,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: 'Username',
                          prefixIcon: const Icon(Icons.person),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.white,

                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // border: ,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: 'password',
                          prefixIcon: const Icon(Icons.lock),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.white,
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {
                              print('clicked');
                            },
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // border: ,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("New to quiz app?"),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                print("hello");
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.green),
                              ))
                        ],
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  CategoryScreen(),
                            ),
                          );
                        },
                        child: Text("login"),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            backgroundColor: Colors.green,
                            elevation: 20,
                            minimumSize: Size(130, 40)),
                      ),
                      SizedBox(height: 20),
                      Icon(
                        Icons.fingerprint,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Text(
                        "Use Touch ID",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text("Remember me"),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              print("Hello");
                            },
                            child: Text(
                              "Forget password",
                              style: TextStyle(color: Colors.green),
                            ),
                          )
                        ],
                      )
                    ],
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
