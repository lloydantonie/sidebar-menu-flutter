import 'package:flutter/material.dart';
import 'package:sidebar_menu/bloc/navigation_bloc/navigation_bloc.dart';

class Logout extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "Logout",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
