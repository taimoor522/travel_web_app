import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavItemWidget extends StatelessWidget {
  const NavItemWidget({super.key, required this.navItem});
  final String navItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        onPressed: () {},
        child: Text(
          navItem,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
