import 'package:flutter/material.dart';

class WeekBoard extends StatefulWidget {
  WeekBoard({super.key});

  @override
  State<WeekBoard> createState() => _WeekBoardState();
}

class _WeekBoardState extends State<WeekBoard> {
  List<String> tableRowTitle = ['부위', '일', '월', '화', '수', '목', '금', '토'];
  List<String> tableColumnTitle = ['등', '어깨', '가슴', '하체', '팔', '유산소'];

  Widget buildTableItem(int row, int column) {
    if (row == 0) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          tableRowTitle[column],
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      );
    } else if (row > 0 && column == 0) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          tableColumnTitle[row - 1],
          textAlign: TextAlign.end,
        ),
      );
    } else {
      return buildTrainingBox(row, column);
    }
  }

  Widget buildTrainingBox(int row, int column) {
    late Color boxColor;

    // Todo 조건
    // switch(1) {
    //   case 1 :
    //     boxColor = Color(0x2F2F2F);
    //     break;
    //
    //   case 2:
    //     boxColor = Color(0x747474);
    //     break;
    //
    //   case 3:
    //     boxColor = Color(0xFFFFFF);
    //     break;
    // }

    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(2),
      width: 20, // 사각형의 가로 크기
      height: 20, // 사각형의 세로 크기
      decoration: BoxDecoration(
        // Todo boxColor로 변경
        color: Color(0xFFF0F0F0), // 내부 색상 설정
        borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
        border: Border.all(
          color: Colors.black, // 테두리 색상
          width: 2.0, // 테두리 두께
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      itemCount: 56,
      itemBuilder: (context, index) {
        int row = index ~/ 8;
        int column = index % 8;

        print('row : $row, column : $column');

        return buildTableItem(row, column);
      },
    );
  }
}
