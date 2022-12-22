import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  final TextEditingController? controllerTF;
  final String? hintTextTF;
  // final DateTime? fechaSeleccionada;

  const DatePickerWidget({Key? key, this.controllerTF, this.hintTextTF})
      : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  Future pickDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            2000), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));
    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() { 
        widget.controllerTF?.text = formattedDate;
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controllerTF,
      readOnly: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            borderSide: BorderSide(color: Colors.black)),
        labelText: ("¿Ingresa la fecha de tu último periodo?"),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        suffixIcon: Icon(
          Icons.calendar_today,
          color: Colors.black54,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          // borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          // borderSide: BorderSide(color: Colors.black),
        ),
      ),
      onTap: () {
        pickDate(context);
      },
    );
  }
}
