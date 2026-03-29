// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageResponseDto _$PageResponseDtoFromJson(Map<String, dynamic> json) =>
    PageResponseDto(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$PageResponseDtoToJson(PageResponseDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

CharactersListResponseDto _$CharactersListResponseDtoFromJson(
  Map<String, dynamic> json,
) => CharactersListResponseDto(
  info: PageResponseDto.fromJson(json['info'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map((e) => CharacterResponseDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CharactersListResponseDtoToJson(
  CharactersListResponseDto instance,
) => <String, dynamic>{'info': instance.info, 'results': instance.results};

CharacterResponseDto _$CharacterResponseDtoFromJson(
  Map<String, dynamic> json,
) => CharacterResponseDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  type: json['type'] as String,
  gender: json['gender'] as String,
  origin: Origin.fromJson(json['origin'] as Map<String, dynamic>),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  image: json['image'] as String,
  episode: (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
  url: json['url'] as String,
  created: DateTime.parse(json['created'] as String),
);

Map<String, dynamic> _$CharacterResponseDtoToJson(
  CharacterResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'type': instance.type,
  'gender': instance.gender,
  'origin': instance.origin,
  'location': instance.location,
  'image': instance.image,
  'episode': instance.episode,
  'url': instance.url,
  'created': instance.created.toIso8601String(),
};

Origin _$OriginFromJson(Map<String, dynamic> json) =>
    Origin(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$OriginToJson(Origin instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};

Location _$LocationFromJson(Map<String, dynamic> json) =>
    Location(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};
