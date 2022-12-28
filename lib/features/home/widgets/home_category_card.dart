import 'package:flutter/material.dart';
import 'package:pokedex/utils/enums/label_type.dart';
import 'package:pokedex/widgets/poke_label.dart';

class HomeCategoryCard extends StatelessWidget {
  const HomeCategoryCard({
    super.key,
    required this.title,
    required this.color,
    required this.onTap,
  });

  final VoidCallback onTap;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 66.0,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8.0),
          highlightColor: color,
          child: Center(
            child: Label(
              value: title,
              type: LabelType.subtitle,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
