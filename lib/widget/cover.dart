import 'package:flutter/material.dart';

class CoverPhoto extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CoverPhoto({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Card(
          elevation: 0,
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  margin: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8.0),
                  child: Text(title,
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      child: Text("posts",
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                    Text("members",
                        style: Theme.of(context).textTheme.displayMedium),
                    Text("join us",
                        style: Theme.of(context).textTheme.displayMedium),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
