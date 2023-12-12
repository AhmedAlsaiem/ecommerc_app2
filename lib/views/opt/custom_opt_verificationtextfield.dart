import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CutomOptVerificationTextField extends StatelessWidget {
  CutomOptVerificationTextField({
    this.focus,
    super.key,
    this.onchange,
  });
  final bool? focus;
  late String data;
  void Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 50,
      child: TextFormField(
        onChanged: onchange,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
              borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
              borderRadius: BorderRadius.circular(15)),
        ),
        style: Theme.of(context).textTheme.headlineSmall,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
