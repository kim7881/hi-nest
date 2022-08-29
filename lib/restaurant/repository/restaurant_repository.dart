import 'package:actual/restaurant/model/restaurant_detail_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository{
  // http://$ip/restaurant
  factory RestaurantRepository(Dio dio, {String baseUrl})
  = _RestaurantRepository;

  // http://$ip/restaurant/
  // @GET('/')
  // paginate();

  // http://$ip/restaurant/:id
  @GET('/{id}')
  @Headers({
    'authorization' : 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InRlc3RAY29kZWZhY3RvcnkuYWkiLCJzdWIiOiJmNTViMzJkMi00ZDY4LTRjMWUtYTNjYS1kYTlkN2QwZDkyZTUiLCJ0eXBlIjoiYWNjZXNzIiwiaWF0IjoxNjYxNzc3Nzk5LCJleHAiOjE2NjE3NzgwOTl9.Zsg8fCwNtu7lsY3Dle7h-tcvgHk46zvAJRAtc_gMisI'
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
  @Path() required String id,
});
}