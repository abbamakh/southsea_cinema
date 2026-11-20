import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() {
    return _MovieListingState();
  }
}

class _MovieListingState extends State<MovieListing>{
  int _ticketQuantity = 1;
  String _bookingMessage = '';

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
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(  
          spacing: 10,
          children: [
            Text("Lion King (1994) (PG)"),
            Text('Southsea Cinema Room'),
            Text('Thursday 22 Oct 2026, 18:00 - ends at 19:14'),
            Text('Please note that Discounts/Membership Benefits will be applied once you have selected your tickets'),
            Text('Select Quantities (Up to 5 in total)'),

            DropdownMenu<int>(
              initialSelection: _ticketQuantity,
              onSelected: (int? value) {
                if (value != null) {
                  setState(() {
                    _ticketQuantity = value;
                    Text('Tickets selected: $_ticketQuantity');
                  });
                }
              },
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 0, label: '0'),
                DropdownMenuEntry(value: 1, label: '1'),
                DropdownMenuEntry(value: 2, label: '2'),
                DropdownMenuEntry(value: 3, label: '3'),
                DropdownMenuEntry(value: 4, label: '4'),
                DropdownMenuEntry(value: 5, label: '5'),
              ],
            ),


            ElevatedButton(
              onPressed: () {
                print('Add to order button pressed');
                setState(() {
                  _bookingMessage = 'Added $_ticketQuantity tickets to the order';
                  Text(_bookingMessage);
                });
              }, 
              child: const Text('Add To Order'),
            ),
          ],
        ),
      ),
    );  
  }
}