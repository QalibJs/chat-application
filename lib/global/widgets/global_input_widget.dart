import '../../constants/app_text_styles.dart';
import '../../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GlobalInputWidget extends StatefulWidget {
  final String hintText;
  final bool? isHome;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isPassword;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLength;
  final int? maxLine;
  final bool isMessage;
  final Color color;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  const GlobalInputWidget({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isPassword,
    this.controller,
    this.minLines,
    this.maxLength,
    required this.isMessage,
    required this.color,
    this.inputType,
    this.validator,
    this.inputFormatters,
    this.onTap,
    this.onChanged,
    this.maxLine,
    this.isHome,
  }) : super(key: key);

  @override
  State<GlobalInputWidget> createState() => _GlobalInputWidgetState();
}

class _GlobalInputWidgetState extends State<GlobalInputWidget> {
  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => widget.onTap,
      onChanged: (value) => widget.onChanged,
      obscureText: isSecure ? false : (widget.isPassword! ? true : false),
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.inputType,
      validator: (value) => widget.validator!(value),
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      controller: widget.controller,
      textInputAction: TextInputAction.done,
      cursorColor: exColor(context),
      decoration: InputDecoration(
        hintStyle: AppTextStyle.whiteSmallText(context),
        prefixIcon: widget.prefixIcon,
        suffix: widget.isPassword!
            ? GestureDetector(
                onTap: () {
                  setState(() {});
                  isSecure = !isSecure;
                },
                child: Icon(
                  isSecure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 19,
                ),
              )
            : widget.suffixIcon,
        label: widget.isMessage
            ? null
            : Text(
                widget.hintText,
                style: TextStyle(
                  color: exColor(context),
                ),
              ),
        hintText: widget.isMessage ? widget.hintText : null,
        // border: context.
      ),
    );
  }
}
