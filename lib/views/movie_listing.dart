import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: 
      Container(
        alignment: Alignment.topLeft,
        child: Column(
          spacing: 10,
          children: [
            Text("Lion King (1994) (PG)", textAlign: TextAlign.left),
            Text('Southsea Cinema Room', textAlign: TextAlign.left),
            Text('Thursday 22 Oct 2026, 18:00 - ends at 19:14', textAlign: TextAlign.left),
            Text('Please note that Discounts/Membership Benefits will be applied once you have selected your tickets', textAlign: TextAlign.left),
            Text('Select Quantities (Up to 5 in total)', textAlign: TextAlign.left),

            DropdownMenu<double>(
              initialSelection: 0,
              dropdownMenuEntries: [
                DropdownMenuEntry<double>(value: 0, label: '0'),
                DropdownMenuEntry<double>(value: 7.50, label: '1'),
                DropdownMenuEntry<double>(value: 15.00, label: '2'),
                DropdownMenuEntry<double>(value: 22.50, label: '3'),
                DropdownMenuEntry<double>(value: 30.00, label: '4'),
                DropdownMenuEntry<double>(value: 37.50, label: '5'),
              ],
            ),

            ElevatedButton(
              onPressed: () => print('Tickets Added'), 
              child: const Text('Add To Order')
            ),
          ],
        ),
      ),
    );  
  }
}