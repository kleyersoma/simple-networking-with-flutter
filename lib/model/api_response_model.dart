class APIResponseModel {
  int? updated;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  String? casesPerOneMillion;
  String? deathsPerOneMillion;
  int? tests;
  String? testsPerOneMillion;
  int? population;
  String? oneCasePerPeople;
  String? oneDeathPerPeople;
  String? oneTestPerPeople;
  String? activePerOneMillion;
  String? recoveredPerOneMillion;
  String? criticalPerOneMillion;
  int? affectedCountries;

  APIResponseModel(
      {this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.affectedCountries});

  APIResponseModel.fromJson(Map<String, dynamic> json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'].toString();
    deathsPerOneMillion = json['deathsPerOneMillion'].toString();
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'].toString();
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'].toString();
    oneDeathPerPeople = json['oneDeathPerPeople'].toString();
    oneTestPerPeople = json['oneTestPerPeople'].toString();
    activePerOneMillion = json['activePerOneMillion'].toString();
    recoveredPerOneMillion = json['recoveredPerOneMillion'].toString();
    criticalPerOneMillion = json['criticalPerOneMillion'].toString();
    affectedCountries = json['affectedCountries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['updated'] = updated;
    data['cases'] = cases;
    data['todayCases'] = todayCases;
    data['deaths'] = deaths;
    data['todayDeaths'] = todayDeaths;
    data['recovered'] = recovered;
    data['todayRecovered'] = todayRecovered;
    data['active'] = active;
    data['critical'] = critical;
    data['casesPerOneMillion'] = casesPerOneMillion;
    data['deathsPerOneMillion'] = deathsPerOneMillion;
    data['tests'] = tests;
    data['testsPerOneMillion'] = testsPerOneMillion;
    data['population'] = population;
    data['oneCasePerPeople'] = oneCasePerPeople;
    data['oneDeathPerPeople'] = oneDeathPerPeople;
    data['oneTestPerPeople'] = oneTestPerPeople;
    data['activePerOneMillion'] = activePerOneMillion;
    data['recoveredPerOneMillion'] = recoveredPerOneMillion;
    data['criticalPerOneMillion'] = criticalPerOneMillion;
    data['affectedCountries'] = affectedCountries;
    return data;
  }
}
