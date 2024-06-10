import 'package:flutter/material.dart';

class TrainingSettingDialog extends StatefulWidget {
  TrainingSettingDialog({super.key});

  @override
  State<TrainingSettingDialog> createState() => _TrainingSettingDialogState();
}

class _TrainingSettingDialogState extends State<TrainingSettingDialog> {
  final _parts = ['등', '어깨', '가슴', '하체', '팔', '유산소'];

  late String _selectPart;

  @override
  void initState() {
    super.initState();
    _selectPart = _parts[0];
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFD9D9D9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.black),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                '운동 설정',
                style: TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '운동 부위',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: _selectPart,
                    items: _parts
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectPart = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '운동 부위',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: _selectPart,
                    items: _parts
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectPart = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '운동 부위',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: _selectPart,
                    items: _parts
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectPart = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '운동 부위',
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: _selectPart,
                    items: _parts
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectPart = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool> showCustomDialog(BuildContext context) async {
  bool result = false;

  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return TrainingSettingDialog();
      });

  return result;
}
