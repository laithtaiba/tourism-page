import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      padding: MaterialStatePropertyAll(EdgeInsets.all(9)),
      hintText: "Search",
      hintStyle:
          MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.w300)),
      leading: Icon(Icons.search),
    );
  }
}
