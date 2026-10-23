import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'lion',
        title: 'The Lion King',
        synopsis: 'This is a film about talking animals',
        ageRating: 'U',
        runtime: '88 minutes',
        screeningTime: "14:00",
        ticketPrice: 7.50,
        imagePath: 'assets/images/lion_king.jpeg',
      ),
      Movie(
        id: 'mission',
        title: 'Mission Impossible: Fallout',
        synopsis: 'This is a film about Tom Cruise running.',
        ageRating: '12',
        runtime: '147 minutes',
        screeningTime: "19:00",
        ticketPrice: 7.50,
        imagePath: 'assets/images/mi_fallout.jpg',
      ),
    ];
}
  
  Movie? getMovieById(String id) {
    for (final movie in getMovies()) {
      if (movie.id == id) {
        return movie;
      }
    }
    return null;
  }
}