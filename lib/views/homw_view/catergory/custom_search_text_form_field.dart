import 'package:flutter/material.dart';

class CutomSearchTextField extends StatelessWidget {
  const CutomSearchTextField({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: name == null ? 260 : double.infinity,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 176, 174, 174).withOpacity(0.1),
      ),
      child: TextFormField(
        cursorHeight: 25,
        onChanged: (value) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
//color: Colors.black.withOpacity(0.4),
            weight: 0.25,
          ),
          contentPadding: const EdgeInsets.only(left: 35, top: 22, bottom: 22),
          hintText: 'Search Product',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 176, 174, 174).withOpacity(0.1),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 176, 174, 174).withOpacity(0.1),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 176, 174, 174).withOpacity(0.1),
            ),
          ),
        ),
      ),
    );
  }
}
