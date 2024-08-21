import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormCustomWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final bool isInvisible;
  const FormCustomWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.isInvisible,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.005),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.035,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.007),
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.004,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.007,
                  bottom: MediaQuery.of(context).size.height * 0.005,
                  top: MediaQuery.of(context).size.height * 0.005,
                  right: MediaQuery.of(context).size.width * 0.01),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(34, 36, 48, 1),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: TextFormField(
                  controller: controller,
                  obscureText: isInvisible,
                  style: GoogleFonts.poppins(color: Colors.white),
                  maxLines: 1,
                  enableSuggestions: false,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(color: Colors.white),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.02,
                          horizontal:
                              MediaQuery.of(context).size.width * 0.005),
                      hintText: hintText),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
