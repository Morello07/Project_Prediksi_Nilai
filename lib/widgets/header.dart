import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  Header({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar( // Gunakan AppBar untuk header
      backgroundColor: Colors.blue,
      title: Row(
        children: [
          Icon(
            Icons.school,
            color: Colors.white,
            size: 45.0,
          ),
          SizedBox(width: 8.0), // Jarak antara ikon dan teks
          Text(
            title,
            style: TextStyle(
              fontSize: 30.0, // Sesuaikan ukuran teks
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.0); // Ukuran AppBar
}
