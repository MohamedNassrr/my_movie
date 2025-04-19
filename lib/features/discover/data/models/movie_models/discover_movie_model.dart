import 'package:equatable/equatable.dart';

class DiscoverMovieModel extends Equatable {
  final bool? adult;
  final String? backdropPath;
  final int? id;
  final String? originalLanguage;
  final String originalTitle;
  final String? overview;
  final double? popularity;
  final String posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final String? voteAverage;
  final int? voteCount;

  const DiscoverMovieModel({
    this.adult,
    this.backdropPath,
    this.id,
    this.originalLanguage,
    required this.originalTitle,
    this.overview,
    this.popularity,
    required this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory DiscoverMovieModel.fromJson(Map<String, dynamic> json) => DiscoverMovieModel(
        adult: json['adult'] as bool?,
        backdropPath: json['backdrop_path'] as String?,
        id: json['id'] as int?,
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String? ?? 'Unknown Title',
        overview: json['overview'] as String?,
        popularity: (json['popularity'] as num?)?.toDouble(),
        posterPath: json['poster_path'] as String? ?? '',
        releaseDate: json['release_date'] as String?,
        title: json['title'] as String?,
        video: json['video'] as bool?,
        voteAverage: (json['vote_average'] as num?)?.toString(),
        voteCount: json['vote_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };

  @override
  List<Object?> get props {
    return [
      adult,
      backdropPath,
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount,
    ];
  }
}
