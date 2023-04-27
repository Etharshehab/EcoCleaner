import 'package:flutter/material.dart';

import '../../config/my_text.dart';
import '../../widget/confirom_button.dart';
import '../../widget/post_templet.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText(
                  data: "ECOCLEANER",
                  color: const Color.fromRGBO(49, 204, 149, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.post_add_rounded,
                      color: Color.fromRGBO(49, 204, 149, 1),
                    )),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
            const SizedBox(height: 5.0),
            MyText(
              data: "Ahmed Omar",
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on),
                MyText(data: "Minia, Egypt"),
              ],
            ),
            const SizedBox(height: 10.0),
            Stack(
              children: [
                TextField(
                  minLines: 5,
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Write for helping in cleaning!",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onChanged: (text) {},
                ),
                const Positioned(
                  bottom: 7.0,
                  right: 7.0,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: ConfirmButton(title: "post"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  data: "Previous posts",
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const PostTemplate(
              image1Url: 'assets/images/2.jpg',
              image2Url: 'assets/images/3.jpg',
              profileImageUrl: 'assets/images/user.png',
              text:
                  'While i walked in Zamalek, i saw some garbage which make the street looks bad and people can’t walk in it, so if anyone can help in cleaning it this will be awesome.',
              time: ' 2 hours ago',
              username: ' Ahmed Ali',
            ),
          ]),
        ),
      ),
    );
  }
}
