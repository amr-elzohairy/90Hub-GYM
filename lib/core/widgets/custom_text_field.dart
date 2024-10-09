import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController textEditingController;
  final unFocusColor;
  final bool enabled;
  final bool isControllerOut;

  CustomTextField({super.key, 
    required this.labelText,
    this.isPassword = false,
    this.unFocusColor = Colors.white,
    this.enabled = true,
    TextEditingController? textEditingController,
  })  : textEditingController =
            textEditingController ?? TextEditingController(),
        isControllerOut = textEditingController == null ? false : true;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState(
        labelText: labelText,
        isPassword: isPassword,
      );
}

class _CustomTextFieldState extends State<CustomTextField> {
  final bool isPassword;
  FocusNode _focus = FocusNode();
  bool _isEmpty = true;
  final labelText;
  bool _obsecure = false;
  bool _isFocused = false;

  _CustomTextFieldState({required this.labelText, required this.isPassword});

  @override
  void initState() {
    _obsecure = isPassword;
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    if (!widget.isControllerOut) {
      widget.textEditingController.dispose();
    }
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focus.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5),
      child: TextField(
        focusNode: _focus,
        enabled: widget.enabled,
        obscureText: _obsecure,
        controller: widget.textEditingController,
        onChanged: (value) {
          if (value != '') {
            setState(() {
              _isEmpty = false;
            });
          } else {
            setState(() {
              _isEmpty = true;
            });
          }
        },
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          alignLabelWithHint: true,
          disabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
          labelStyle: TextStyle(
            color: _isEmpty && !_isFocused
                ? widget.unFocusColor
                : const Color(0xFF951025),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF2C2C2E)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF2C2C2E)),
          ),
          suffixIcon: isPassword && !_isEmpty
              ? Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      setState(() {
                        _obsecure = !_obsecure;
                      });
                    },
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
