import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uts/components/my_textfield.dart';
import 'package:uts/screens/homepage.dart';
import 'package:uts/screens/login.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  //text controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  get confirmPasswordController => null;

  //sign user up method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            // child: Center(
            child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(height: 30),
              //logo
              // const Icon(
              //   Icons.lock,
              //   size: 100,
              //   ),

              const SizedBox(height: 20),

              //welcome back
              const Text(
                'Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                  fontSize: 25,
                ),
              ),

              const SizedBox(height: 20),

              //username field
              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                prefixIcon: Icons.email,
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                prefixIcon: Icons.key,
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //confirm password textfield
              MyTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                prefixIcon: Icons.key,
                obscureText: true,
              ),

              const SizedBox(height: 25),

              //login button
              SizedBox(
                width: 358,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const homepage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF205295),
                      padding: const EdgeInsets.symmetric(
                        vertical: 17,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              //or sign in with
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              //google + apple + facebook
              Row(
                children: [
                  const SizedBox(width: 25),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 17,
                          ),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Color(0xCC205295)),
                              borderRadius: BorderRadius.circular(18))),
                      child: Image.asset('assets/images/Ggoogle.webp',
                          height: 35, width: 35),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 17,
                          ),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Color(0xCC205295)),
                              borderRadius: BorderRadius.circular(18))),
                      child: Image.asset('assets/images/apple.png',
                          height: 35, width: 35),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 17,
                          ),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Color(0xCC205295)),
                              borderRadius: BorderRadius.circular(18))),
                      child: Image.asset('assets/images/facebook.png',
                          height: 35, width: 35),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              //already have an account
              Text.rich(
                TextSpan(children: [
                  const TextSpan(
                    text: 'Sudah punya akun? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                      text: 'Sign In',
                      style: const TextStyle(
                        color: Color(0xFF205295),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        }),
                ]),
              ),
            ]),
          ),
        )));
  }
}
