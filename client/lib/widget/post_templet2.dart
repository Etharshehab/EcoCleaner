import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String name;
  final String username;
  final String timeAgo;
  final String text;
  final String imageUrl;
  final String profileimageUrl;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    Key? key,
    required this.profileimageUrl,
    required this.name,
    required this.username,
    required this.timeAgo,
    required this.text,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 2.0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage(
                profileimageUrl,
              ),
            ),
            const SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '@$username • $timeAgo',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: const TextStyle(fontSize: 16.0),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 4.0),
                Text(
                  '$likes',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                Icon(
                  Icons.comment_outlined,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 4.0),
                Text(
                  '$comments',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                Icon(
                  Icons.share_outlined,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 4.0),
                Text(
                  '$shares',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey.shade600,
            ),
          ],
        ),
      ]),
    );
  }
}
