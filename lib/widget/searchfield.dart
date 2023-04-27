import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  //final Function(String) onTextChanged;

  const SearchField({
    Key? key,
    // required this.onTextChanged,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OptimalSearchFieldState createState() => _OptimalSearchFieldState();
}

class _OptimalSearchFieldState extends State<SearchField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
            15.0), // Change the value to make the border more or less circular
        border: Border.all(
            color:
                Colors.grey.withOpacity(0.3)), // Change the color of the border
      ),
      child: TextField(
        controller: _searchController,
        //onChanged: widget.onTextChanged,
        decoration: const InputDecoration(
          hintText: 'write a post...',
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.text,
        autocorrect: true,
        autofillHints: const [AutofillHints.name],
        enableSuggestions: true,
        maxLines: 1,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }
}
