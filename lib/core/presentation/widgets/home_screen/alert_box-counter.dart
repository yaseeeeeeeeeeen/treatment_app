import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:treatment_app/core/presentation/utils/colors.dart';
import 'package:treatment_app/core/presentation/utils/text_styles.dart';

class CounterAlertBox extends StatefulWidget {
  CounterAlertBox({super.key, required this.count});
  int count;
  @override
  State<CounterAlertBox> createState() => _CounterAlertBoxState();
}

class _CounterAlertBoxState extends State<CounterAlertBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.green,
          child: Column(
            children: [
              Align(
                heightFactor: 0.5,
                child: IconButton(
                    alignment: Alignment.topCenter,
                    onPressed: () {
                      setState(() {
                        if (widget.count != 0) {
                          widget.count = widget.count - 1;
                        } else {
                          widget.count = 0;
                        }
                      });
                    },
                    icon: const Icon(Icons.minimize, color: Colors.white)),
              ),
            ],
          ),
        ),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                widget.count.toString(),
                style: AppTextStyles.poppinsblack,
              ),
            )),
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.green,
          child: IconButton(
              onPressed: () {
                widget.count = widget.count + 1;
                setState(() {});
              },
              icon: const Icon(Icons.add, color: Colors.white)),
        )
      ],
    );
  }
}
