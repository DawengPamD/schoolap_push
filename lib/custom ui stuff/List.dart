import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String titleText;
  final VoidCallback onTap;
  final IconData leadingIcon;

  const CustomListTile({
    Key? key,
    required this.titleText,
    required this.onTap,
    required this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(leadingIcon),
          SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                titleText,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
      onTap: onTap,
    );
  }
}
