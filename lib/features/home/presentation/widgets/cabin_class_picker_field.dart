import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';

class CabinClassPickerField extends StatefulWidget {
  const CabinClassPickerField({super.key});

  @override
  State<CabinClassPickerField> createState() => _CabinClassPickerFieldState();
}

class _CabinClassPickerFieldState extends State<CabinClassPickerField> {
  final TextEditingController _controller = TextEditingController();
  String _selectedClass = 'Economy';

  @override
  void initState() {
    super.initState();
    _controller.text = _selectedClass;
  }

  Future<void> _selectCabinClass(BuildContext context) async {
    final String? selectedClass = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Cabin Class'),
          content: SingleChildScrollView(
            child: Column(
              children: ['Economy Class', 'Business Class', 'First Class']
                  .map((cabinClass) => ListTile(
                        title: Text(cabinClass),
                        onTap: () {
                          Navigator.pop(context, cabinClass);
                        },
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );

    if (selectedClass != null) {
      setState(() {
        _selectedClass = selectedClass;
        _controller.text = _selectedClass;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: true,
      onTap: () => _selectCabinClass(context),
      decoration: InputDecoration(
        label: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: AppColors.primaryColorVeryLight),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
            child: Text(
              'Cabin Class',
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
