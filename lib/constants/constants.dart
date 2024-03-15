import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppConstants {
  static textFormFieldComponent(
    TextEditingController controller,
    String hintText,
    String helpText,
    IconData prefixIcon,
    IconData suffixIcon,
    bool isPassword,
    bool isObscured,
    bool enabled,
    bool isPrefix,
    bool isSuffix,
    Color borderColor,
    Function()? onChanged,
  ) {
    return TextFormField(
      controller: controller,
      // keyboardType: TextInputType.number,
      // inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      // readOnly: readOnly == null ? false : true,

      obscureText: isPassword == false ? false : true,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        hintText: null == hintText ? '' : hintText,
        helperText: null == helpText ? '' : helpText,
        prefixIcon: isPrefix == false ? null : Icon(prefixIcon),
        suffixIcon: isSuffix == false
            ? null
            : IconButton(
                icon: Icon(
                  isObscured ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: onChanged,
                color: Colors.pink[400],
              ),
        // enabled: null == enabled ? true : false,
      ),
    );
  }
}
