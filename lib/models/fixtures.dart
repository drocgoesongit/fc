class FixturesModel {
  final String teamOne;
  final String teamTwo;
  final String teamOneLogo;
  final String teamTwoLogo;
  final String date;
  final String day;
  final String time;
  final String location;
  final String league;
  final String leagueLogo;
  final String roundName;

  FixturesModel({
    required this.teamOne,
    required this.teamTwo,
    required this.teamOneLogo,
    required this.teamTwoLogo,
    required this.date,
    required this.day,
    required this.time,
    required this.location,
    required this.league,
    required this.leagueLogo,
    required this.roundName,
  });

  // Factory method to create an instance from a Map
  factory FixturesModel.fromMap(Map<String, dynamic> map) {
    return FixturesModel(
      teamOne: map['team_one'] ?? '',
      teamTwo: map['team_two'] ?? '',
      teamOneLogo: map['team_one_logo'] ?? '',
      teamTwoLogo: map['team_two_logo'] ?? '',
      date: map['date'] ?? '',
      day: map['day'] ?? '',
      time: map['time'] ?? '',
      location: map['location'] ?? '',
      league: map['league'] ?? '',
      leagueLogo: map['league_logo'] ?? '',
      roundName: map['round_name'] ?? '',
    );
  }

  // Method to convert an instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'team_one': teamOne,
      'team_two': teamTwo,
      'team_one_logo': teamOneLogo,
      'team_two_logo': teamTwoLogo,
      'date': date,
      'day': day,
      'time': time,
      'location': location,
      'league': league,
      'league_logo': leagueLogo,
      'round_name': roundName,
    };
  }
}
