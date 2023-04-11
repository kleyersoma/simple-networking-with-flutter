import 'package:flutter/material.dart';
import 'package:networking_like_pro/model/api_response_model.dart';
import 'package:networking_like_pro/model/networking_response.dart';
import 'package:networking_like_pro/screens/home_screen_repository.dart';

class HomeScreenViewModel extends ChangeNotifier {
  APIResponseModel? apiResponseModel;
  String messageToShow = '';
  bool isLoading = false;

  Future<void> getDataFromApi() async {
    isLoading = true;
    notifyListeners();

    NetworkingResponse networkingResponse =
        await HomeScreenRepository().getLatestStatsData();

    if (networkingResponse is NetworkingResponseData) {
      apiResponseModel = networkingResponse.apiResponseModel;
    } else if (networkingResponse is NetworkingException) {
      messageToShow = networkingResponse.message;
    }

    isLoading = false;
    notifyListeners();
  }
}
