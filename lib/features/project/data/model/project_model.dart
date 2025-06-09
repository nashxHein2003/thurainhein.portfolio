class Project {
  final String name;
  final String company;
  final String description;
  final String imagePath;
  final List<String> techs;
  final List<String> tasks;

  Project({
    required this.name,
    required this.company,
    required this.description,
    required this.imagePath,
    required this.techs,
    required this.tasks,
  });
}

class ProjectModel {
  final String name;
  final String description;
  final List<String> tech;
  final bool isMobile;
  final bool isPublished;
  final List<String> host;
  final String image;
  final bool isVisibleRepo;
  final String repoLink;

  ProjectModel({
    required this.name,
    required this.description,
    required this.tech,
    required this.isMobile,
    required this.isPublished,
    required this.host,
    required this.image,
    required this.isVisibleRepo,
    required this.repoLink,
  });
}
