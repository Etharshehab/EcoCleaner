import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.green,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          )),
    );
  }
}
