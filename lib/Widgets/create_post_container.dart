import 'package:facebook/Widgets/custom_flat_button.dart';
import 'package:facebook/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8.0,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "What's on your mind?",
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 10),
          // ignore: sized_box_for_whitespace
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomFlatButton(
                icon: Icons.videocam,
                press: () {},
                color: Colors.red,
                text: "Live",
              ),
              CustomFlatButton(
                icon: Icons.photo_library,
                press: () {},
                color: Colors.green,
                text: "Photo",
              ),
              CustomFlatButton(
                icon: Icons.video_call,
                press: () {},
                color: Colors.purpleAccent,
                text: "Room",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
