class RecommendationModel {
  final String name, source, text;
  RecommendationModel(
      {required this.name, required this.source, required this.text});
}

final List<RecommendationModel> recommendations = [
  RecommendationModel(name: 'name', source: 'source', text: 'text'),
];
