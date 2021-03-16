import 'package:flutter/material.dart';

class DropdownTypeWidget extends StatefulWidget {
  final double bodySize;
  DropdownTypeWidget(this.bodySize);

  @override
  _DropdownTypeWidgetState createState() => _DropdownTypeWidgetState();
}

class _DropdownTypeWidgetState extends State<DropdownTypeWidget> {
  var selectedValue = 'DAILY';

  final List<DropdownMenuItem<String>> menuItens = const [
    DropdownMenuItem(
        value: 'DAILY',
        child: Text(
          'Daily',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
    DropdownMenuItem(
        value: 'MONTHLY',
        child: Text(
          'Monthly',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (widget.bodySize) * 0.2,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            icon: Icon(Icons.arrow_drop_down_circle, size: 20),
            value: selectedValue,
            items: menuItens,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            }),
      ),
    );
  }
}
