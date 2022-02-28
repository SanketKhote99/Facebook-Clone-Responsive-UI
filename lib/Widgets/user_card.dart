import 'package:facebook/Widgets/profile_avatar.dart';
import 'package:facebook/models/user_model.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  // ignore: use_key_in_widget_constructors
  const UserCard({
    required this.user,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
