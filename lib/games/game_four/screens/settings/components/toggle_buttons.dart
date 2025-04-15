import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flutter/material.dart';

// import '../../../../game_one/Layouts/Pages/page_settings.dart';
import '../../../models/settings.dart';



class MyToggleButtons extends StatefulWidget {
  final int index;
  const MyToggleButtons(this.index);

  @override
  _MyToggleButtonsState createState() => _MyToggleButtonsState();
}

class _MyToggleButtonsState extends State<MyToggleButtons> {
  late List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      isSelected = Settings.p1AvatarList;
    } else {
      isSelected = Settings.p2AvatarList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: isSelected,
      fillColor: kActiveCardColor,
      splashColor: kActiveCardColor,
      renderBorder: false,
      children: [
        _buildCircleAvatar(0),
        _buildCircleAvatar(1),
        _buildCircleAvatar(2),
        _buildCircleAvatar(3),
      ],
      onPressed: (newIndex) {
        setState(() {
          for (int index = 0; index < isSelected.length; index++) {
            isSelected[index] = newIndex == index ? true : false;
          }
        });
        Settings.playerAvatars[widget.index] = newIndex;
      },
    );
  }

  CircleAvatar _buildCircleAvatar(int index) {
    return CircleAvatar(
      radius: 22.0,
      backgroundColor: isSelected[index] ? kBackgroundColor : kActiveCardColor,
      child: Image.asset('assets/images/avatar-$index.png', width: 36.0),
    );
  }
}
