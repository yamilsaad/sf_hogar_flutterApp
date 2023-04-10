import 'package:flutter/material.dart';

class CamButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.camera_alt), elevation: 0, onPressed: () {});
    /*FloatingActionButton(
      child: Icon(Icons.camera_alt),
      elevation: 0,
      onPressed: () async{},
      
    );*/
  }
}
