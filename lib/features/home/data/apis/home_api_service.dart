

import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/features/home/data/apis/home_api_constants.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_service.g.dart';
@RestApi(baseUrl:ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio,{String baseUrl})=_HomeApiService;
  

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationResponseModel>getSpecialization();
  
}