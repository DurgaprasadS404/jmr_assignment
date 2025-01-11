import 'package:flutter/material.dart';
import 'package:jmr_assignment/core/styles/app_colors.dart';

class TravelersPickerField extends StatefulWidget {
  const TravelersPickerField({super.key});

  @override
  State<TravelersPickerField> createState() => _TravelersPickerFieldState();
}

class _TravelersPickerFieldState extends State<TravelersPickerField> {
  final TextEditingController _controller = TextEditingController();
  int _numTravelers = 1;

  @override
  void initState() {
    super.initState();
    _controller.text = '$_numTravelers Passenger';
  }

  Future<void> _selectTravelers(BuildContext context) async {
    final int? selectedNum = await showDialog<int>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Number of Travelers'),
          content: SingleChildScrollView(
            child: Column(
              children: List.generate(
                8,
                (index) => ListTile(
                  title: Text('${index + 1} Passenger${index == 0 ? '' : 's'}'),
                  onTap: () {
                    Navigator.pop(context, index + 1);
                  },
                ),
              ),
            ),
          ),
        );
      },
    );

    if (selectedNum != null) {
      setState(() {
        _numTravelers = selectedNum;
        _controller.text =
            '$_numTravelers Passenger${_numTravelers == 1 ? '' : 's'}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: true,
      onTap: () => _selectTravelers(context),
      decoration: InputDecoration(
        label: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: AppColors.primaryColorVeryLight),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
            child: Text(
              'Travelers',
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
