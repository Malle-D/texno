import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget favoriteItem(String name, String img, String value, String price,
    bool favourite, void Function() like,void Function() basket) {
  return Column(
    children: [
      Row(
        children: [
          Container(
              width: 110,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                  alignment: Alignment.center, child: Image.network(img))),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 160,
                child: Text(name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14)),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 160,
                child: Text("${price} сум",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700, fontSize: 14)),
              ),
              const SizedBox(height: 8),
              Container(
                width: 160,
                decoration: BoxDecoration(
                    color: const Color(0x15000000),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 2.0, left: 5.0, bottom: 2.0, right: 3),
                  child: Text(value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 12)),
                ),
              ),
              const SizedBox(height: 18)
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      like();
                    },
                    child: Icon(Icons.favorite, color: favourite ? Colors.red : Colors.grey)),
                InkWell(
                    onTap: () {
                      basket();
                    },
                    child: const Icon(Icons.shopping_basket_outlined, color: Colors.amber,))
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 8),
      const Divider(color: Colors.black12)
    ],
  );
}
