import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stylish/api/api_end_points.dart';
import 'package:stylish/api/model/request/auth/login_request_dto.dart';
import 'package:stylish/api/model/response/brands/brands_response_dto.dart';
import 'package:stylish/api/model/response/categories/categories_response_dto.dart';
import 'model/request/auth/register_request_dto.dart';
import 'model/response/auth/auth_response_dto.dart';
import 'model/response/products/products_response_dto.dart';

part 'api_services.g.dart';


@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiEndPoints.loginEndPoint)
  Future<AuthResponseDto> login(@Body() LoginRequestDto loginRequest);

  @POST(ApiEndPoints.registerEndPoint)
  Future<AuthResponseDto> register(@Body() RegisterRequestDto registerRequest);

  @GET(ApiEndPoints.categoriesEndPoint)
  Future<CategoriesResponseDto> getAllCategories();

  @GET(ApiEndPoints.brandsEndPoint)
  Future<BrandsResponseDto> getAllBrands();

  @GET(ApiEndPoints.productsEndPoint)
  Future<ProductsResponseDto> getAllProducts();
}
