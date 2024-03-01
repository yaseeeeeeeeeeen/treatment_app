import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';

class MyRadioList extends StatefulWidget {
  final List<String> options;

  const MyRadioList({super.key, required this.options});

  @override
  MyRadioListState createState() => MyRadioListState();
}

class MyRadioListState extends State<MyRadioList> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: widget.options.map((option) {
        return CustomRadioButton(
          value: option,
          label: option,
          isSelected: _selectedValue == option,
          onChanged: (value) => setState(() => _selectedValue = value),
        );
      }).toList(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CustomRadioButton({
    required String value,
    required String label,
    required bool isSelected,
    required Function(String) onChanged,
  }) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.circle_outlined,
            color: isSelected ? AppColors.green : Colors.grey[400],
          ),
          onPressed: () => onChanged(value),
        ),
        Text(label),
      ],
    );
  }
}
