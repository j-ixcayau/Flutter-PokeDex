import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_colors.dart';
import 'package:pokedex/utils/enums/input_type.dart';

class PokeInput extends StatefulWidget {
  const PokeInput({
    super.key,
    required this.controller,
    required this.type,
    required this.title,
  });

  final TextEditingController controller;
  final InputType type;
  final String title;

  @override
  State<PokeInput> createState() => _PokeInputState();
}

class _PokeInputState extends State<PokeInput> {
  bool isTextVisible = true;

  @override
  void initState() {
    isTextVisible = widget.type != InputType.password;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.type.keyboardType,
      obscureText: !isTextVisible,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        labelText: widget.title,
        suffixIcon: getSuffixIcon(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: PokeColors.error),
        ),
        errorStyle: const TextStyle(height: 0),
      ),
      validator: widget.type.validText,
    );
  }

  Widget? getSuffixIcon() {
    if (widget.type == InputType.password) {
      return IconButton(
        onPressed: () {
          isTextVisible = !isTextVisible;
          setState(() {});
        },
        icon: Icon(
          isTextVisible ? Icons.visibility_off : Icons.visibility,
        ),
      );
    }

    return null;
  }
}
