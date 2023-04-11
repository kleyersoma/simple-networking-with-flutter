import 'package:flutter/material.dart';
import 'package:networking_like_pro/model/api_response_model.dart';
import 'package:networking_like_pro/screens/home_screen_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenViewModel homeScreenViewModel =
        Provider.of<HomeScreenViewModel>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Networking Example'),
        ),
        body: Center(
          child: Selector<HomeScreenViewModel, APIResponseModel?>(
            builder: (context, value, child) => const DataWidget(),
            selector: (context, provider) => provider.apiResponseModel,
            shouldRebuild: (previous, next) => true,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => homeScreenViewModel.getDataFromApi(),
          tooltip: 'Get Data from API',
          child: homeScreenViewModel.isLoading
              ? const CircularProgressIndicator(
                  backgroundColor: Colors.white,
                )
              : const Icon(Icons.cloud_download),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class DataWidget extends StatelessWidget {
  const DataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenViewModel homeScreenViewModel =
        Provider.of<HomeScreenViewModel>(context, listen: true);
    var apiResponseModel = homeScreenViewModel.apiResponseModel;
    if (apiResponseModel == null) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: const Text(
          'Press the floating action button to get data',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return Text(
        "Total Cases : ${apiResponseModel.cases}\n"
        "Today's Cases : ${apiResponseModel.todayCases}\n"
        "Total Deaths : ${apiResponseModel.deaths}\n"
        "Today's Deaths : ${apiResponseModel.todayDeaths}\n"
        "Total Recovered : ${apiResponseModel.recovered}\n"
        "Active Cases : ${apiResponseModel.active}\n"
        "Critical Cases : ${apiResponseModel.critical}\n"
        "Cases per million: ${apiResponseModel.casesPerOneMillion}\n"
        "Deaths per million: ${apiResponseModel.deathsPerOneMillion}\n"
        "Total Tests Done: ${apiResponseModel.tests}\n"
        "Tests per million: ${apiResponseModel.testsPerOneMillion}\n"
        "Affected countires : ${apiResponseModel.affectedCountries}\n",
        style: const TextStyle(fontSize: 18),
      );
    }
  }
}
