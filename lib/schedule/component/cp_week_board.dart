import 'package:flutter/material.dart';

class WeekBoard2 extends StatefulWidget {
  WeekBoard2({super.key});

  @override
  State<WeekBoard2> createState() => _WeekBoard2State();
}

class _WeekBoard2State extends State<WeekBoard2> {
  List<String> tableRowTitle = ['부위', '일', '월', '화', '수', '목', '금', '토'];
  List<String> tableColumnTitle = ['등', '어깨', '가슴', '하체', '팔', '유산소'];

  Widget buildTableItem(int row, int column) {
    if (row == 0) {
      return Text(tableRowTitle[column]);
    } else if (row > 0 && column == 0) {
      return Text(tableColumnTitle[row - 1]);
    } else {
      return buildTrainingBox(row, column);
    }
  }

  Widget buildTrainingBox(int row, int column) {
    return Container(
      width: 20, // 사각형의 가로 크기
      height: 20, // 사각형의 세로 크기
      decoration: BoxDecoration(
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
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
        mainAxisSpacing: 8.0,
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

class WeekBoard extends StatelessWidget {
  const WeekBoard({super.key});

  Widget buildContainer() {
    return Column(
      children: [
        Container(
          width: 20, // 사각형의 가로 크기
          height: 20, // 사각형의 세로 크기
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0), // 내부 색상 설정
            borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 2.0, // 테두리 두께
            ),
          ),
        ),
        Container(
          width: 20, // 사각형의 가로 크기
          height: 20, // 사각형의 세로 크기
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0), // 내부 색상 설정
            borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 2.0, // 테두리 두께
            ),
          ),
        ),
        Container(
          width: 20, // 사각형의 가로 크기
          height: 20, // 사각형의 세로 크기
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0), // 내부 색상 설정
            borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 2.0, // 테두리 두께
            ),
          ),
        ),
        Container(
          width: 20, // 사각형의 가로 크기
          height: 20, // 사각형의 세로 크기
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0), // 내부 색상 설정
            borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 2.0, // 테두리 두께
            ),
          ),
        ),
        Container(
          width: 20, // 사각형의 가로 크기
          height: 20, // 사각형의 세로 크기
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0), // 내부 색상 설정
            borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 2.0, // 테두리 두께
            ),
          ),
        ),
        Container(
          width: 20, // 사각형의 가로 크기
          height: 20, // 사각형의 세로 크기
          decoration: BoxDecoration(
            color: Color(0xFFF0F0F0), // 내부 색상 설정
            borderRadius: BorderRadius.circular(4.0), // 둥근 테두리 반경 설정
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 2.0, // 테두리 두께
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('부위'),
              Text('일'),
              Text('월'),
              Text('화'),
              Text('수'),
              Text('목'),
              Text('금'),
              Text('토'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('등'),
                  Text('어깨'),
                  Text('가슴'),
                  Text('하체'),
                  Text('팔'),
                  Text('유산소'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainer(),
                  buildContainer(),
                  buildContainer(),
                  buildContainer(),
                  buildContainer(),
                  buildContainer(),
                  buildContainer(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
