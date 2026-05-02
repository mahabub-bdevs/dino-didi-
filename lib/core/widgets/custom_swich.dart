import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSwitch extends StatelessWidget {
  final RxBool value;
  final Function(bool) onChanged;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
      onTap: () {
        value.value = !value.value;
        onChanged(value.value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 30,
        width: 60,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: value.value ? Colors.green : Colors.grey.shade400,
        ),
        child: Align(
          alignment:
          value.value ? Alignment.centerRight : Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Colors.black26,
                  offset: Offset(0, 2),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}