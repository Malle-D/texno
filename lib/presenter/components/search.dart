import 'package:flutter/material.dart';

@override
Widget InputSearch(BuildContext context, TextEditingController controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: const Color(0xfff6f6f6),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      children: [
        const Icon(Icons.search, color: Colors.grey),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Хочу купить',
              border: InputBorder.none,
              hintStyle:TextStyle(
                  color: Color(0xffc4c4c4)
              )
            ),
          ),
        ),
      ],
    ),
  );
}
