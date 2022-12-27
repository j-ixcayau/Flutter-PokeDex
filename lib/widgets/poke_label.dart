import 'package:flutter/material.dart';
import 'package:pokedex/utils/enums/label_type.dart';

class Label extends StatelessWidget {
  const Label({
    super.key,
    this.type = LabelType.normal,
    this.color = Colors.black,
    required this.value,
    this.textAlign,
    this.fontWeight,
  });

  final LabelType type;
  final Color color;
  final String? value;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    if (value == null) return const SizedBox.shrink();

    return Text(
      value!,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight ?? type.fontWeight,
        fontSize: type.fontSize,
        color: color,
      ),
    );
  }
}
