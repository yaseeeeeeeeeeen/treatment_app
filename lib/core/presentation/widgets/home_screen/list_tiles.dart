import 'package:flutter/material.dart';
import 'package:treatment_app/core/presentation/utils/constant/colors.dart';
import 'package:treatment_app/core/presentation/utils/constant/text_styles.dart';

class PatientListTile extends StatelessWidget {
  const PatientListTile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      height: size.height / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              Text("1", style: AppTextStyles.poppinsblack),
              const SizedBox(width: 12),
              Text("Vikram Singh", style: AppTextStyles.poppinsbold)
            ],
          ),
          Text("Couple Combo Package (Rejuven...",
              style: AppTextStyles.poppinsblack),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      size: 15,
                      color: Colors.orange.shade700,
                    ),
                    const SizedBox(width: 5),
                    Text("30/10/23", style: AppTextStyles.dateSmall)
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Icon(
                      Icons.group,
                      size: 15,
                      color: Colors.orange.shade700,
                    ),
                    const SizedBox(width: 5),
                    Text("Jithesh", style: AppTextStyles.dateSmall)
                  ],
                ),
              ),
              const SizedBox()
            ],
          ),
          const Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("View Booking details", style: AppTextStyles.poppinsblack),
              Icon(Icons.arrow_forward_ios_outlined, color: AppColors.green)
            ],
          )
        ],
      ),
    );
  }
}
