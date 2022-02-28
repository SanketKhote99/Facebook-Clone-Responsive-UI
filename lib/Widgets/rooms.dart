// ignore_for_file: deprecated_member_use
import 'package:facebook/Widgets/widgets.dart';
import 'package:facebook/config/palette.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              // ignore: prefer_const_constructors
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: const _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      // ignore: prefer_const_constructors
      borderSide: BorderSide(
        width: 3,
        color: Colors.blueAccent,
      ),
      textColor: Palette.facebookBlue,
      child: Row(
        children: const [
          // ShaderMask(
          //   shaderCallback: (rect) =>
          //       Palette.createRoomGradient.createShader(rect),
          //   child: const Icon(
          //     Icons.video_call,
          //     size: 35,
          //     color: Colors.white,
          //   ),
          // ),
          // ignore: prefer_const_constructors
          Icon(
            Icons.video_call,
            size: 35,
            color: Colors.purple,
          ),
          SizedBox(
            width: 4,
          ),
          Text("Create\nRoom")
        ],
      ),
    );
  }
}
