// ignore: file_names
import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String helperText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? isPassword;
  final bool? enabled;
  final bool? readOnly;
  final Color? borderColor;

  const CommonTextFormField({
    this.controller,
    this.hintText = '',
    this.helperText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword,
    this.enabled,
    this.readOnly,
    this.borderColor,
  });

  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
          controller: controller,
          readOnly: null == readOnly ? false : true,
          obscureText: null == isPassword ? false : true,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 1.0)),
            hintText: null == hintText ? '' : hintText,
            helperText: null == helperText ? '' : helperText,
            prefixIcon: null == prefixIcon ? null : Icon(prefixIcon),
            suffixIcon: null == suffixIcon ? null : Icon(suffixIcon),
            enabled: null == enabled ? true : false,
          ),
        ),
        color: borderColor);
  }
}
