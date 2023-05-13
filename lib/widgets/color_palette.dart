import 'package:flutter/material.dart';

class ColorPalette extends StatefulWidget {
  const ColorPalette({Key? key}) : super(key: key);

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {
  List<int> colorCodes = [
    0xff397394,
    0xffcb924a,
    0xff695247,
    0xffb4c9d0,
    0xffb65f7f,
    0xff1d1d1d,
    0xfffafafa,
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: colorCodes.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
        return SizedBox(
          width: 50,
          child: Row(
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Color(colorCodes[index]),
                  borderRadius: BorderRadius.circular(100),
                  // border: Border.all(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
