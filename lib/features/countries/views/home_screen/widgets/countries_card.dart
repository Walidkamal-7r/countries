import 'package:countries/core/utils/app_styles.dart';
import 'package:countries/features/countries/views/home_screen/models/country_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CountriesCard extends StatelessWidget {
  CountriesCard({super.key});

  final List<CountryModel> countries = [
    CountryModel(
      name: 'Egypt',
      capital: 'Cairo',
      region: 'Africa',
      flagUrl: 'https://flagcdn.com/w320/eg.png',
    ),
    CountryModel(
      name: 'Japan',
      capital: 'Tokyo',
      region: 'Asia',
      flagUrl: 'https://flagcdn.com/w320/jp.png',
    ),
    CountryModel(
      name: 'Brazil',
      capital: 'Brasilia',
      region: 'Americas',
      flagUrl: 'https://flagcdn.com/w320/br.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countries.length,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      itemBuilder: (context, index) {
        final country = countries[index];
        return Container(
          margin: EdgeInsets.only(bottom: 5.h),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.network(
                  country.flagUrl,
                  width: 80.w,
                  height: 50.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(country.name),
                  Text(country.capital),
                  Text(country.region),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
