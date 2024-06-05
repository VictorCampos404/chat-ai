import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifsp_ai/common/consts/app_colors.dart';
import 'package:ifsp_ai/common/consts/app_font.dart';
import 'package:ifsp_ai/common/consts/custom_icons.dart';

class CustomInput extends StatefulWidget {
  final String? hint;
  final String? title;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final bool? enable;
  final bool? isPassword;
  final bool? isPin;
  final bool? multLine;
  final int? maxLength;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final bool? autofocus;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final FontWeight? fontWeight;
  final double? fontSize;
  final int maxLines;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final Widget? suffix;
  final Function()? onTap;
  final bool? readOnly;

  const CustomInput({
    Key? key,
    this.hint,
    this.title,
    this.textInputType,
    this.onChanged,
    this.enable = true,
    this.isPassword = false,
    this.isPin = false,
    this.multLine = false,
    this.maxLines = 6,
    this.maxLength,
    this.controller,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.autofocus = false,
    this.onSubmitted,
    this.focusNode,
    this.fontWeight,
    this.fontSize,
    this.textStyle,
    this.hintTextStyle,
    this.suffix,
    this.onTap,
    this.readOnly,
  }) : super(key: key);

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late bool obscure;

  @override
  void initState() {
    obscure = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: !widget.enable!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.title != null)
            Text(widget.title ?? '').item(
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
          TextField(
            onTap: widget.onTap,
            maxLines: widget.multLine! ? widget.maxLines : 1,
            focusNode: widget.focusNode,
            textCapitalization: widget.textCapitalization!,
            inputFormatters: widget.inputFormatters,
            controller: widget.controller,
            autofocus: widget.autofocus!,
            readOnly: !widget.enable! || (widget.readOnly ?? false),
            obscuringCharacter: '•',
            onSubmitted: widget.onSubmitted,
            maxLength: widget.isPin! ? 6 : widget.maxLength,
            style: widget.textStyle ??
                TextStyle(
                  fontSize: widget.fontSize ?? 24,
                  letterSpacing: widget.isPassword!
                      ? 4
                      : widget.isPin!
                          ? 24
                          : null,
                  fontFamily: "Montserrat",
                  fontWeight: widget.fontWeight ?? FontWeight.w500,
                  color: AppColors.purple,
                ),
            keyboardType: widget.textInputType,
            onChanged: widget.onChanged,
            obscureText: widget.isPassword! && obscure,
            decoration: InputDecoration(
              suffixIcon: widget.isPassword!
                  ? obscure
                      ? IconButton(
                          icon: const Icon(
                            CustomIcons.eye_2_fill,
                            color: AppColors.purple,
                          ),
                          onPressed: () => setState(() {
                            obscure = !obscure;
                          }),
                        )
                      : IconButton(
                          icon: const Icon(
                            CustomIcons.eye_close_line,
                            color: AppColors.purple,
                          ),
                          onPressed: () => setState(() {
                                obscure = !obscure;
                              }))
                  : widget.suffix,
              hintText: widget.isPin! ? "000000" : widget.hint,
              hintStyle: widget.hintTextStyle ??
                  TextStyle(
                    fontSize: widget.fontSize ?? 24,
                    letterSpacing: widget.isPin! ? 24 : 0,
                    fontFamily: "Montserrat",
                    fontWeight: widget.fontWeight ?? FontWeight.w500,
                    color: AppColors.purple.withOpacity(0.5),
                  ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
