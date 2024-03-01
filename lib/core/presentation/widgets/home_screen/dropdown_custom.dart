import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/static_datas.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';

class DropDownCustom extends StatefulWidget {
  const DropDownCustom({super.key});

  @override
  State<DropDownCustom> createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  String dropdownValue = StaticData.sortDropDown[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          isDense: true,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          iconSize: 24,
          elevation: 0,
          style: AppTextStyles.poppinsblack,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: StaticData.sortDropDown
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
