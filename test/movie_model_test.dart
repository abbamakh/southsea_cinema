import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie instance with given properties', () {
      const movie = Movie(
        id: 'cars',
        title: 'Cars',
        synopsis: 'This is a film about talking cars.',
        ageRating: 'U',
        runtime: '120 minutes',
        screeningTime: '15:00',
        ticketPrice: 5.00,
        imagePath: 'assets/images/lion_king.jpeg',
      );

      expect(movie.id, 'cars');
      expect(movie.title, 'Cars');
      expect(movie.synopsis, 'This is a film about talking cars.');
      expect(movie.ageRating, 'U');
      expect(movie.runtime, '120 minutes');
      expect(movie.screeningTime, '15:00');
      expect(movie.ticketPrice, 5.00);
      expect(movie.imagePath, 'assets/images/lion_king.jpeg');
    });
  
    test(
        'formattedPrice returnds price prefixed with pund sign and two decimals', 
        () {
      const movie = Movie(
        id: 'fallout',
        title: 'Mission Impossible Fallout',
        synopsis: 'This is a film about Tom Cruise running.',
        ageRating: '12',
        runtime: '120 minutes',
        screeningTime: '15:00',
        ticketPrice: 5.5,
        imagePath: 'assets/images/mi_fallout.jpg',
      );

      expect(movie.formattedPrice, '£5.50');
    });
  });
}