import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinentFilter extends StatefulWidget {
  const ContinentFilter({super.key});

  @override
  State<ContinentFilter> createState() => _ContinentFilterState();
}

class _ContinentFilterState extends State<ContinentFilter> {
  String? selectedValue;

  final List<String> continents = [
    'Africa',
    'Asia',
    'Europe',
    'Oceania',
    'Americas',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Continent Filter'),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            hint: const Text('Select Continent'),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
            ),
            items: continents.map((String category) {
              return DropdownMenuItem<String>(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
