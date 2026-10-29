import 'package:countries/core/utils/app_styles.dart';
import 'package:countries/features/countries/views/home_screen/widgets/continent_filter.dart';
import 'package:countries/features/countries/views/home_screen/widgets/countries_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries of the world'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.language_outlined),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.sunny))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Global Country Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),
          ),
          ContinentFilter(),
          Expanded(child: CountriesCard()),
        ],
      ),
    );
  }
}
