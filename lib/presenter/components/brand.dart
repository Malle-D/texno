import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget brandItem(String img){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xd000000)),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xd000000),
              offset: Offset(
                0.5,
                0.5,
              ),
              blurRadius: 0.1,
              spreadRadius: 0.3,
            ), //BoxShadow
            BoxShadow(
              color: Color(0xd000000),
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Image.network(img, width: 90),
        ),
      ),
    ),
  );
}