import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
    group('MovieRepository unit tests', () {
        test('getMovies returns two movies', () {
            final MovieRepository repository = MovieRepository();
            final List<Movie> movies = repository.getMovies();

            expect(movies.length, 2);
        });

        test('getMovies contains Lion King and Mission Impossible', () {
            final MovieRepository repository = MovieRepository();
            final List<Movie> movies = repository.getMovies();

            final Movie mission = movies[1];
            expect(mission.id, 'mission');
            expect(mission.title, 'Mission Impossible: Fallout');
            expect(mission.synopsis, 'This is a film about Tom Cruise running.');
            expect(mission.ageRating, '12');
            expect(mission.runtime, '147 minutes');
            expect(mission.screeningTime, '19:00');
            expect(mission.ticketPrice, 7.50);
            expect(mission.imagePath, isNotEmpty);
        });
    
    
        test('getMovieById returns matching movie when id exists', () {
            final MovieRepository repository = MovieRepository();
            final Movie? movie = repository.getMovieById('mission');

            expect(movie, isNotNull);
            expect(movie?.title, 'Mission Impossible: Fallout');
            expect(movie?.ticketPrice, 7.50);
        });

        test('getMovieById returns null when id does not exist', () {
            final MovieRepository repository = MovieRepository();
            final Movie? movie = repository.getMovieById('non-existent');

            expect(movie, isNull);
        });
    });
}