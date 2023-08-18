import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class DropDownPart extends StatefulWidget {
  const DropDownPart({super.key});

  @override
  State<DropDownPart> createState() => _DropDownPart();
}
// ignore: camel_case_types
class _DropDownPart extends State<DropDownPart> {
  String dropdownvalue = 'Filters';
  var items = [
    'Filters',
    'Select booker',
    'Select Status',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 17, left: 10, bottom: 18.33, right: 12),
          child: Icon(Icons.search),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            "Search",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(172, 181, 189, 1)),
          ),
        ),
        const SizedBox(
          width: 237,
        ),
        const VerticalDivider(),
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0, right: 11),
          child: DropdownButton(
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            items: [
              DropdownMenuItem(
                value: items[0],
                child: Text(items[0]),
              ),
              DropdownMenuItem(value: items[1], child: Text(items[1])),
              DropdownMenuItem(value: items[2], child: Text(items[2]),),
            ],
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12, top: 10, right: 32, bottom: 5),
          child: Text(
            "Thu, April 13th",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(73, 80, 87, 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 16.26,
            right: 12,
            bottom: 15.3,
          ),
          // child: TextField(
          //   // controller: ,
          //   readOnly: true,

          //   decoration: InputDecoration(
          //       icon: Icon(Icons.calendar_today), //icon of text field
          //       labelText: "Enter Date" //label text of field
          //       ),
          // onTap: () async {
          //   DateTime? pickedDate = await showDatePicker(
          //       context: context,
          //       initialDate: DateTime.now(),
          //       firstDate: DateTime(1950),
          //       //DateTime.now() - not to allow to choose before today.
          //       lastDate: DateTime(2100));

          //   // if (pickedDate != null) {
          //   //   print(
          //   //       pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          //   // String formattedDate =
          //   //     DateFormat('yyyy-MM-dd').format(pickedDate);
          //   // print(
          //   //     formattedDate); //formatted date output using intl package =>  2021-03-16
          //   // setState(() {
          //   //   dateInput.text =
          //   //       formattedDate; //set output date to TextField value.
          //   // });
          //   // } else {}
          // },
        ),
        const VerticalDivider()
      ],
    );
  }
}
