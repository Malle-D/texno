import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget categoryItem(String name, String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.network(
              img,
              width: 37,
              height: 37,
              // fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(name,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 15)
              ),
            )
          ],
        ),
        Icon(Icons.arrow_forward_ios, color: Colors.black26)
      ],
    ),
  );
}
