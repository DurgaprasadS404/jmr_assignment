import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key, required this.labelText});
  final String labelText;
  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  final TextEditingController _controller = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _controller.text = DateFormat('EEE, dd MMM - yyyy').format(DateTime.now());
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _controller.text = DateFormat('EEE, dd MMM - yyyy').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: true,
      onTap: () => _selectDate(context),
      decoration: InputDecoration(
        label: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: AppColors.primaryColorVeryLight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
            child: Text(
              widget.labelText,
            ),
          ),
        ),
        suffixIcon: const Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
