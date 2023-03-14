import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relaxy_pfa_project/Screens/Login/login.dart';
import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
          "WELCOME TO RELAXi",
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: const Color(0xFF40513B)
          ),

        ),
        SizedBox(height: size.height * 0.03),
        SvgPicture.asset(
          "assets/icons/Mental health-pana.svg",
          height: size.height * 0.45,
        ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
          text: "LOGIN",
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    }
                ),
            );
          },
        ),
        RoundedButton(
            borderWidth: 2,
            text: "SIGN UP",
            color: Colors.white,
            textColor: Colors.black,
            press: () {}
        ),


      ],
    ),
    );
  }
}



