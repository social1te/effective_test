import 'package:dio/dio.dart';
import 'package:effective_test_app/src/features/characters/list/data/dto/response/characters_list_response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'characters_list_api.g.dart';

@RestApi()
abstract class CharactersListApi {
  factory CharactersListApi(Dio dio, {String? baseUrl}) = _CharactersListApi;

  @GET('/character')
  Future<CharactersListResponseDto> getCharacters(@Query('page') int page);
}
