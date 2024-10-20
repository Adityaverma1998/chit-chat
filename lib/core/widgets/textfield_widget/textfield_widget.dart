import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final IconData? icon;

  final String? hint;
  final String? errorText;
  final bool isObscure;
  final bool isIcon;
  final TextInputType? inputType;
  final TextEditingController textController;
  final EdgeInsets padding;
  final Color hintColor;
  final Color iconColor;
  final FocusNode? focusNode;
  final ValueChanged? onFieldSubmitted;
  final ValueChanged? onChanged;
  final bool autoFocus;
  final TextInputAction? inputAction;
  final bool isSuffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final String? suffixIconType;
  final String? suffixSvgIcon;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final Color? labelTextColor;
  final Color focusBorderColor;
  final Color enableBorderColor;
  final Color textColor;
  final double fontSize;
  final bool isLabelColor;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          TextFormField(

            readOnly: readOnly,
            cursorColor: Colors.black,
            controller: textController,
            focusNode: focusNode,
            onFieldSubmitted: onFieldSubmitted,
            onChanged: onChanged,
            autofocus: autoFocus,
            textInputAction: inputAction,
            obscureText: isObscure,
            maxLength: 60,
            keyboardType: inputType,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.primaryContainer),
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimaryContainer,

              focusColor: enableBorderColor,

              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enableBorderColor,
                  // Replace errorBorderColor with the color you want for the error border
                  width: 1.0,
                ),
              ),
              // border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enableBorderColor,
                  width: 1.0,
                ),
              ),
              // focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(
              //     color: enableBorderColor,
              //     width: 1.0, // Customize the width of the focused border
              //   ),
              // ),

              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              suffixIcon: isSuffixIcon
                  ? IconButton(
                      onPressed: onSuffixIconPressed,
                      icon: Icon(this.suffixIcon, color: suffixIconColor))
                  : null,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enableBorderColor,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintText: this.hint,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: hintColor),
              errorText: errorText,
              errorStyle: const TextStyle(
                color: Colors.red,
                // Change the color to your desired error text color
                fontSize: 12.0, // Adjust the font size as needed
                // Add other TextStyle properties as needed
              ),
              counterText: '',

              // icon: this.isIcon ? Icon(this.icon, color: iconColor) : null
            ),
          ),
        ],
      ),
    );
  }

  const TextFieldWidget({
    super.key,
    this.icon,
    required this.errorText,
    required this.textController,
    this.inputType,
    this.hint,
    this.isObscure = false,
    this.isIcon = true,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.iconColor = Colors.grey,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.autoFocus = false,
    this.inputAction,
    required this.isSuffixIcon,
    this.onSuffixIconPressed,
    this.suffixIconType,
    this.suffixSvgIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.labelText,
    this.labelTextColor,
    required this.focusBorderColor,
    required this.enableBorderColor,
    required this.textColor,
    this.fontSize = 12,
    this.isLabelColor = false,
    this.readOnly = false,
  });
}
