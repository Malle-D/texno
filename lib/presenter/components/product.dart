import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget productItem(
    String name, String img, String value,
    String price,bool isFavourite, void Function() like,
    bool isSaved, void Function() save
    ) {
  return Column(
    children: [
      Stack(
        children: [
          Center(
            child: Container(
                width: 160,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                    alignment: Alignment.center, child: Image.network(img))),
          ),
          Positioned(
            right: 0,
            top: 5,
            child: InkWell(
              onTap: () {
                like();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: isFavourite ? Colors.amber : Colors.white,
                    border: Border.all(color: isFavourite ? Colors.transparent :Colors.black12),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.favorite,color: isFavourite ? Colors.red : Colors.grey, size: 20),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 40,
            child: InkWell(
              onTap: () {
                save();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: isSaved ? Colors.amber : Colors.white,
                    border: Border.all(color: isSaved ? Colors.transparent :Colors.black12),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.shopping_basket_outlined,color: isSaved ? Colors.black : Colors.grey, size: 20),
                ),
              ),
            ),
          )
        ],
      ),
      Container(
        width: 160,
        child: Text(name,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.start,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 11)),
      ),
      Container(
        alignment: Alignment.centerLeft,
        width: 160,
        child: Image.asset("assets/images/stars.png",
            height: 20, fit: BoxFit.cover),
      ),
      Container(
        width: 160,
        decoration: BoxDecoration(
            color: Color(0x15000000), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 2.0, left: 5.0, bottom: 2.0, right: 3),
          child: Text(value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 9)),
        ),
      ),
      SizedBox(
        width: 160,
        child: Text("${price} сум",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 14)),
      ),
    ],
  );
}
