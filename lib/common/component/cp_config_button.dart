import 'package:flutter/material.dart';

var COLOR_BLACK = MaterialStateProperty.all<Color>(Colors.black);
var COLOR_WHITE = MaterialStateProperty.all<Color>(Colors.white);

class TrainingConfigurationButton extends StatelessWidget {
  final String partName;
  final bool activate;

  const TrainingConfigurationButton({
    super.key,
    required this.partName,
    this.activate = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(120, 50),
          backgroundColor: activate ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(12),
          )),
      onPressed: () {
        //Todo
      },
      onLongPress: () {
        //TODO
      },
      child: Text(
        partName,
        style: TextStyle(
          color: activate ? Colors.black : Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
