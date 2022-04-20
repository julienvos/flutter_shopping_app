import 'package:chopper/chopper.dart';

part 'chopper_data_service.chopper.dart';
//flutter pub run build_runner build --delete-conflicting-outputs
//flutter pub run build_runner watch --delete-conflicting-outputs

@ChopperApi(baseUrl: '/posts')
abstract class TheApiService extends ChopperService {
  @Get()
  Future<Response> getPosts();

  @Get(path: '/{id}')
  Future<Response> getPost(@Path('id') int id);

  @Post()
  Future<Response> postPost(@Body() Map<String, dynamic> body);

  static create() {
    final client = ChopperClient(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      services: [_$TheApiService()],
      converter: JsonConverter(),
    );
    return _$TheApiService(client);
  }
}
