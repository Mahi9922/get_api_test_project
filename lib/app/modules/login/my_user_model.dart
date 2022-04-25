class MyUser {
  List<Results>? results;

  MyUser({this.results});

  MyUser.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? taskId;
  String? taskName;
  String? taskDescription;
  String? taskPriority;

  Results(
      {this.taskId, this.taskName, this.taskDescription, this.taskPriority});

  Results.fromJson(Map<String, dynamic> json) {
    taskId = json['task_id'];
    taskName = json['task_name'];
    taskDescription = json['task_description'];
    taskPriority = json['task_priority'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['task_id'] = taskId;
    data['task_name'] = taskName;
    data['task_description'] = taskDescription;
    data['task_priority'] = taskPriority;
    return data;
  }
}
