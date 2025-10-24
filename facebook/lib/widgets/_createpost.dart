import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
final VoidCallback? onPostCreate;
  const CreatePost({super.key, this.onPostCreate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPostCreate,
      leading: CircleAvatar(
        backgroundImage:AssetImage("assets/profile/prof1.jpg")
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "What's on your mind?",
            
          ),
        ),
        trailing: Icon(Icons.image),
    );
  }
}