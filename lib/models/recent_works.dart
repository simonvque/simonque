class RecentWork {
  final String image, category, title, link;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title,
      required this.link});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
      id: 1,
      title:
          "An Innovative Marketplace App, Bridging Households & The Waste Sector",
      category: "ReGain App",
      image: "assets/images/work1.png",
      link: "https://youtu.be/GhTQjHh3Xjc?si=xALi_elZ_O3nQsJR"),
  RecentWork(
      id: 2,
      title: "An app that bridges dialects, connecting people to care.",
      category: "HealthLink",
      image: "assets/images/work2.png",
      link: "https://github.com/EruelUrsua/solcha2024"),
  RecentWork(
      id: 3,
      title:
          "A project focused on exploring Chicago Police Department data to uncover trends & insights.",
      category: "Chicago Police",
      image: "assets/images/work3.png",
      link:
          "https://app.powerbi.com/links/WgP4uoSnK_?ctid=821b3e1a-0533-4e81-9334-c1f04ef16167&pbi_source=linkShare&bookmarkGuid=8a8f2a7d-0a30-4200-83b0-8d3d1f836d3e"),
  RecentWork(
      id: 4,
      title:
          "A demo app showcasing and testing the capabilities of Google ML Kit features.",
      category: "ML Kit Demo App",
      image: "assets/images/work4.png",
      link: "https://github.com/wizyvision/flutter-mlkit-prototypes"),
];
