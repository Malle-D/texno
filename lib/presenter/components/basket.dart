import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget basketItem(String name, String img, String value, String price,
    int count, void Function() inc, void Function() dec, bool favourite,
    void Function() like,void Function() delete) {
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
              const SizedBox(height: 18),
              Container(
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          dec();
                        },
                        child: Icon(Icons.remove, size: 20),
                      ),
                      Text(
                        count.toString(),
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      InkWell(
                        onTap: () {
                          inc();
                        },
                        child: Icon(Icons.add, size: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.check_box, color: Color(0xffffc300)),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          like();
                        },
                        child: Icon(Icons.favorite, color: favourite ? Colors.red : Colors.grey)),
                    const SizedBox(width: 15),
                    InkWell(
                        onTap: () {
                          delete();
                        },
                        child: const Icon(Icons.delete_outlined)),
                  ],
                )
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
