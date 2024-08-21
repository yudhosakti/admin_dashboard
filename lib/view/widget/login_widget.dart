import 'package:ak_admin/provider/auth_menu_provider.dart';
import 'package:ak_admin/view/widget/form_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Consumer<AuthMenuProvider>(builder: (context, provider, child) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.65,
          color: Color.fromRGBO(25, 26, 31, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.007),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.005),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.007),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.005),
                      child: Text(
                        "Sign in to your account to continue",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.003,
              ),
              FormCustomWidget(
                controller: provider.etEmailLogin,
                hintText: "Insert Your Email",
                isInvisible: false,
                title: "Email Address",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              FormCustomWidget(
                controller: provider.etPasswordLogin,
                hintText: "Insert Your Password",
                isInvisible: true,
                title: "Password",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.002,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.008),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.poppins(color: Colors.blue),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.004,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.013),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                            minWidth: 0, maxWidth: double.infinity),
                        height: MediaQuery.of(context).size.height,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)))),
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromRGBO(105, 105, 219, 1))),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.005),
                              child: Text(
                                "Sign in",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Row(
                          children: [
                            Text(
                              "Not Register Yet ?",
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {
                                  provider.changeMenu(false);
                                },
                                child: Text(
                                  "Register Now",
                                  style:
                                      GoogleFonts.poppins(color: Colors.blue),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.018,
                    )
                  ],
                ),
              ))
            ],
          ),
        );
      }),
    );
  }
}
