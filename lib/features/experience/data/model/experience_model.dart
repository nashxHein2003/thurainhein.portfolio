class ExperienceModel {
  final String name;
  final String company;
  final String description;
  final List<String> tech;
  final String image;
  final List<String>? note;

  ExperienceModel({
    required this.name,
    required this.company,
    required this.description,
    required this.tech,
    required this.image,
    this.note,
  });
}
