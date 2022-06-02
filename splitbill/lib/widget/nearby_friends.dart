import 'package:flutter/material.dart';

class NearbyFriends extends StatelessWidget {
  String? imgUrl;

  NearbyFriends({
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Image.asset(
        imgUrl!,
        width: 50,
      ),
    );
  }
}
