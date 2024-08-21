import 'package:ak_admin/view/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: null,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            image: DecorationImage(
                image: AssetImage('assets/images/walpaper2.jpeg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Center(
                      child: Text(
                        "Arknight Admin Dashboard",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 42),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.005,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.005),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Dashboard Admin yang digunakan untuk memanajemen operator,event, banner dan lain sebagainya",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.005),
                          child: Container(
                            constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.08,
                                minHeight:
                                    MediaQuery.of(context).size.height * 0.08,
                                minWidth: 0,
                                maxWidth: double.infinity),
                            child: ElevatedButton(
                                onHover: (value) {
                                  isHover = value;
                                  setState(() {});
                                },
                                style: ButtonStyle(
                                    side: WidgetStatePropertyAll(BorderSide(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.5))),
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)))),
                                    backgroundColor: isHover
                                        ? WidgetStatePropertyAll(
                                            Colors.blueAccent)
                                        : WidgetStatePropertyAll(Colors.white)),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AuthPage(),
                                      ));
                                },
                                child: Text(
                                  "Get Started",
                                  style: GoogleFonts.poppins(
                                      color: isHover
                                          ? Colors.white
                                          : Colors.black),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
