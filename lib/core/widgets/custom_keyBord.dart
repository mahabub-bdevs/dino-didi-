import 'package:flutter/material.dart';
import '../theme/app_dimensions.dart';
import '../utils/app_size_class.dart';

class CustomNumKeyboard extends StatelessWidget {
  final Function(String) onKeyTap;
  final VoidCallback onDeleteTap;

  const CustomNumKeyboard({
    super.key,
    required this.onKeyTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD2D5DB), // কিবোর্ডের ব্যাকগ্রাউন্ড কালার
      padding: EdgeInsets.only(
        left: getWidth(AppDimensions.padding10),
        right: getWidth(AppDimensions.padding10),
        top: getHeight(AppDimensions.padding10),
        bottom: getHeight(AppDimensions.padding60),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(['1', '2', '3']),
          const SizedBox(height: 8),
          _buildRow(['4', '5', '6']),
          const SizedBox(height: 8),
          _buildRow(['7', '8', '9']),
          const SizedBox(height: 8),

          Row(
            children: [
              _buildKey('.', isSpecial: true), // ডট বা খালি বাটন
              const SizedBox(width: 8),
              _buildKey('0'),
              const SizedBox(width: 8),
              _buildDeleteKey(), // ডিলিট বাটন
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRow(List<String> keys) {
    return Row(
      children: keys.map((key) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: _buildKey(key),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildKey(String label, {bool isSpecial = false}) {
    return Expanded(
      child: Material(
        color: isSpecial ? Colors.transparent : Colors.white,
        borderRadius: BorderRadius.circular(8),
        elevation: isSpecial ? 0 : 1,
        child: InkWell(
          onTap: () => onKeyTap(label),
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 55,
            alignment: Alignment.center,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeleteKey() {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onDeleteTap,
          child: Container(
            height: 55,
            alignment: Alignment.center,
            child: const Icon(Icons.backspace_outlined, size: 24),
          ),
        ),
      ),
    );
  }
}
