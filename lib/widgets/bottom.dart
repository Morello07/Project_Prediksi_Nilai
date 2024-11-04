import 'package:flutter/material.dart';
import 'package:prediksi_nilai_siswa/views/input.dart';

class MenuBottom extends StatefulWidget {
  final int _activePage;
  MenuBottom(this._activePage, {super.key});

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  void getLink(index){
    if(index == 0){
      Navigator.pushReplacementNamed(context, '/');
    } else if (index == 1){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder: (context,) => const Input()
                )
              );
    } else if (index == 2){
          Navigator.pushReplacementNamed(context, '/history',
        );
    }
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white10,
      currentIndex: widget._activePage,
      onTap: getLink,
      items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        ),

      BottomNavigationBarItem(
        icon: Icon(Icons.input),
        label: 'Input',
        ),
        
    ],);
  }
}