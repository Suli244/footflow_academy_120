class ReadModel {
  final String image;
  final String name;
  final String? country;
  final String description;

  ReadModel({
    required this.image,
    required this.name,
    this.country,
    required this.description,
  });
}

List<ReadModel> listPlayers = [
  ReadModel(
    image: '',
    name: 'Lionel Messi',
    country: 'Argentina',
    description:
        '''Often regarded as one of the greatest footballers of all time, Messi is known for his exceptional dribbling, vision, and goal-scoring ability.
Messi has won numerous individual awards, including seven FIFA Ballon d'Or titles, and has achieved tremendous success with FC Barcelona, where he spent the majority of his career.
He has won numerous domestic and international titles with Barcelona, including multiple UEFA Champions League trophies and La Liga titles.''',
  ),
  ReadModel(
    image: '',
    name: '',
    country: '',
    description: '''''',
  ),
];
List<ReadModel> listTrainers = [
  ReadModel(
    image: '',
    name: '',
    description: '''''',
  ),
];
List<ReadModel> listBest = [
  ReadModel(
    image: '',
    name: '',
    description: '''''',
  ),
];
List<ReadModel> listFootball = [
  ReadModel(
    image: '',
    name: '',
    description: '''''',
  ),
];
