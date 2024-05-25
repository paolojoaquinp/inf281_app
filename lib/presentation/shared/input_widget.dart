import 'package:flutter/material.dart';


class InputWidget extends StatefulWidget {
  const InputWidget({super.key, this.label, this.hint, this.obscureText, this.controller});
  final String? label;
  final String? hint;
  final bool? obscureText;
  final TextEditingController? controller;


  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}