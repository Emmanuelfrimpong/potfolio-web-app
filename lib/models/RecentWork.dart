class RecentWork {
  final String image, category, title, description, progess;
  final int id;

  RecentWork(
      {this.id,
      this.image,
      this.category,
      this.title,
      this.description,
      this.progess});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
      description: "New & Fresh Looking Portfolio indeed at the end",
      category: "Management System",
      image: "assets/images/work_1.png",
      title: "AG Fashion House",
      progess: "Published"),
  RecentWork(
      description: "New & Fresh Looking Portfolio indeed at the end",
      category: "Desktop",
      image: "assets/images/work_2.png",
      title: "Push Score",
      progess: "Completed"),
  RecentWork(
      description: "New & Fresh Looking Portfolio indeed at the end",
      category: "Android",
      image: "assets/images/work_3.png",
      title: "MyCourse Materials",
      progess: "Published"),
  RecentWork(
      description: "New & Fresh Looking Portfolio indeed at the end",
      category: "Android",
      image: "assets/images/work_4.png",
      title: "Godlives Delivery",
      progess: "Published"),
  RecentWork(
      description: "New & Fresh Looking Portfolio indeed at the end",
      category: "Android",
      image: "assets/images/work_4.png",
      title: "Story Hub",
      progess: "In progress"),
];
