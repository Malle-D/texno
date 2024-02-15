import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget categoryItem(String name, String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    child: Column(
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x34000000),
                  offset: Offset(
                    0.5,
                    0.5,
                  ),
                  blurRadius: 0.1,
                  spreadRadius: 0.3,
                ), //BoxShadow
                BoxShadow(
                  color: Color(0x34000000),
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Align(
                alignment: Alignment.center,
                child: SvgPicture.network(
                  img,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ))),
        Container(
          width: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
                name,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 8
                )),
          ),
        )
      ],
    ),
  );
}
