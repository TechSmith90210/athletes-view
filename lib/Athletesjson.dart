
class Atheletesjson {
  String name = 'aae';
  String level = 'aefe';

  Atheletesjson({required this.name, required this.level});

  @override
  String toString() {
    return 'name: $name, level: $level';
  }

  Atheletesjson.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['level'] = this.level;
    return data;
  }
}
