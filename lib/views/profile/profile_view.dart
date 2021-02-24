import 'package:flutter/material.dart';
import 'package:the_academy/widgets/centered_view/centered_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Row(
        children: [
          Icon(Icons.construction, size: 80),
          Text("Page my profile under construction"),
        ],
      ),
    );
  }
}
