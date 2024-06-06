import 'package:flutter/material.dart';

class ScheduleDescription extends StatelessWidget {
  const ScheduleDescription({super.key});

  Widget renderTitle() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '운동 부위',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            '운동 설명',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget renderDescription() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text('운동 부위'),
        ),
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('운동 부위'),
                Text('운동 부위'),
                Text('운동 부위'),
                Text('운동 부위'),
              ],
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        renderTitle(),
        renderDescription(),
        renderDescription(),
        renderDescription(),
        renderDescription(),
      ],
    );
  }
}
