import 'package:dsp_teacher_application/Presentation/Theme/theme.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.size,
    @required this.onButtonPress,
    this.text,
    this.textcolor,
    this.buttoncolor,
  }) : super(key: key);

  final Size size;
  final String text;
  final MaterialColor textcolor;
  final MaterialColor buttoncolor;
  final Function onButtonPress;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: size.width * 0.8, height: 50),
      child: ElevatedButton(
        onPressed: this.onButtonPress,
        child: Text(
          text,
          style: AppFonts.buttonText.copyWith(
            color: textcolor,
          ),
        ),
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(AppColors.cDarkGrey[500]),
          backgroundColor: MaterialStateProperty.all(buttoncolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
      ),
    );
  }
}
