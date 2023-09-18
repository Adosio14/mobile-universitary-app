import 'dart:convert';

MenuItem menuItemFromJson(String str) => MenuItem.fromJson(json.decode(str));

String menuItemToJson(MenuItem data) => json.encode(data.toJson());

class MenuItem {
  final String title;
  final String subtitle;
  final String image;

  MenuItem({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        title: json["title"],
        subtitle: json["subtitle"],
        image: json["Image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "Image": image,
      };
}

final List<MenuItem> items = [
  MenuItem(
      title: "Tareas",
      subtitle: "Subtitulo de las tareas",
      image:
          "https://i.pinimg.com/1200x/e8/93/f2/e893f2662d96cb0aee9e89319c11a112.jpg"),
  MenuItem(
      title: "Próximos exámenes",
      subtitle: "Subtitulo de los próximos exámentes",
      image:
          "https://img.pikbest.com/png-images/qiantu/hand-drawn-college-entrance-exam-homework-girl_2633518.png!w700wp")
];
