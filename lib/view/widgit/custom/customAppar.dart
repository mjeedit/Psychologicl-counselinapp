import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled1/core/constant/color.dart';

class CustomAppar extends StatelessWidget {
  final String? hintText;
  final void Function()? onPressedSearch;
  final void Function()? onPressedNotifcation;
  // final void Function(String)? onChanged;
  // final TextEditingController searchcontroller;
  const CustomAppar(
      {super.key,
      this.hintText,
      this.onPressedSearch,
      this.onPressedNotifcation,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      padding: const EdgeInsets.symmetric(horizontal: 13),
      height: 50,
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            // onChanged: onChanged,
            // controller: searchcontroller,
            decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: onPressedSearch,
                    icon: const Icon(
                      Icons.search_outlined,
                      size: 35,
                    )),
                hintText: hintText,
                filled: true,
                fillColor: Appcolor.primarycolor2,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25))),
          )),
          const SizedBox(
            width: 6,
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              size: 35,
              color: Appcolor.primarycolor2,
            ),
            onPressed: onPressedNotifcation,
          )
        ],
      ),
    );
  }
}
