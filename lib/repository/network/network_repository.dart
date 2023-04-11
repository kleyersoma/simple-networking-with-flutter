import 'dart:convert';

import 'package:networking_like_pro/model/api_response_model.dart';
import 'package:networking_like_pro/model/networking_response.dart';
import 'package:http/http.dart' as http;
import 'package:networking_like_pro/utils/constants.dart';

class NetworkRepository {
  Future<NetworkingResponse> getLatestDataFromApi() async {
    try {
      var response = await http.get(Uri.parse(apiEndPointUrl));
      var parsedJson = await json.decode(response.body);
      APIResponseModel apiResponseModel = APIResponseModel.fromJson(parsedJson);
      return NetworkingResponseData(apiResponseModel);
    } catch (e) {
      return NetworkingException(e.toString());
    }
  }
}
