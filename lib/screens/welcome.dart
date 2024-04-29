import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/screens/login.dart';
import 'package:uts/screens/register_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Image.asset('assets/images/Logoasli.png'),
            ),
            Text("Let's Get Started",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0)),
            // ignore: prefer_const_constructors
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Text(
                  "Dapatkan pengalaman berobat yang mudah dan praktis dengan login ke aplikasi mobile kami.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.55),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  )),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 40),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
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
                  "Login",
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
            // ignore: prefer_const_constructors
            SizedBox(height: 15),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 17,
                    ),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFF205295)),
                        borderRadius: BorderRadius.circular(18))),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Color(0xFF205295),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
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
