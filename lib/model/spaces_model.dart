class Spaces {
  List<Space>? spaces;

  Spaces({this.spaces});

  Spaces.fromJson(Map<String, dynamic> json) {
    spaces = json["spaces"] == null ? null : (json["spaces"] as List).map((e) => Space.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (spaces != null) {
      _data["spaces"] = spaces?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Space {
  String? id;
  String? name;
  dynamic color;
  bool? private;
  dynamic avatar;
  dynamic adminCanManage;
  List<Statuses>? statuses;
  bool? multipleAssignees;
  Features? features;
  bool? archived;

  Space({this.id, this.name, this.color, this.private, this.avatar, this.adminCanManage, this.statuses, this.multipleAssignees, this.features, this.archived});

  Space.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    color = json["color"];
    private = json["private"];
    avatar = json["avatar"];
    adminCanManage = json["admin_can_manage"];
    statuses = json["statuses"] == null ? null : (json["statuses"] as List).map((e) => Statuses.fromJson(e)).toList();
    multipleAssignees = json["multiple_assignees"];
    features = json["features"] == null ? null : Features.fromJson(json["features"]);
    archived = json["archived"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["color"] = color;
    _data["private"] = private;
    _data["avatar"] = avatar;
    _data["admin_can_manage"] = adminCanManage;
    if (statuses != null) {
      _data["statuses"] = statuses?.map((e) => e.toJson()).toList();
    }
    _data["multiple_assignees"] = multipleAssignees;
    if (features != null) {
      _data["features"] = features?.toJson();
    }
    _data["archived"] = archived;
    return _data;
  }
}

class Features {
  DueDates? dueDates;
  Sprints? sprints;
  Points? points;
  CustomItems? customItems;
  Tags? tags;
  TimeEstimates? timeEstimates;
  Checklists? checklists;
  Zoom? zoom;
  Milestones? milestones;
  CustomFields? customFields;
  RemapDependencies? remapDependencies;
  DependencyWarning? dependencyWarning;
  StatusPies? statusPies;
  MultipleAssignees? multipleAssignees;
  Portfolios? portfolios;
  Emails? emails;

  Features({this.dueDates, this.sprints, this.points, this.customItems, this.tags, this.timeEstimates, this.checklists, this.zoom, this.milestones, this.customFields, this.remapDependencies, this.dependencyWarning, this.statusPies, this.multipleAssignees, this.portfolios, this.emails});

  Features.fromJson(Map<String, dynamic> json) {
    dueDates = json["due_dates"] == null ? null : DueDates.fromJson(json["due_dates"]);
    sprints = json["sprints"] == null ? null : Sprints.fromJson(json["sprints"]);
    points = json["points"] == null ? null : Points.fromJson(json["points"]);
    customItems = json["custom_items"] == null ? null : CustomItems.fromJson(json["custom_items"]);
    tags = json["tags"] == null ? null : Tags.fromJson(json["tags"]);
    timeEstimates = json["time_estimates"] == null ? null : TimeEstimates.fromJson(json["time_estimates"]);
    checklists = json["checklists"] == null ? null : Checklists.fromJson(json["checklists"]);
    zoom = json["zoom"] == null ? null : Zoom.fromJson(json["zoom"]);
    milestones = json["milestones"] == null ? null : Milestones.fromJson(json["milestones"]);
    customFields = json["custom_fields"] == null ? null : CustomFields.fromJson(json["custom_fields"]);
    remapDependencies = json["remap_dependencies"] == null ? null : RemapDependencies.fromJson(json["remap_dependencies"]);
    dependencyWarning = json["dependency_warning"] == null ? null : DependencyWarning.fromJson(json["dependency_warning"]);
    statusPies = json["status_pies"] == null ? null : StatusPies.fromJson(json["status_pies"]);
    multipleAssignees = json["multiple_assignees"] == null ? null : MultipleAssignees.fromJson(json["multiple_assignees"]);
    portfolios = json["portfolios"] == null ? null : Portfolios.fromJson(json["portfolios"]);
    emails = json["emails"] == null ? null : Emails.fromJson(json["emails"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (dueDates != null) {
      _data["due_dates"] = dueDates?.toJson();
    }
    if (sprints != null) {
      _data["sprints"] = sprints?.toJson();
    }
    if (points != null) {
      _data["points"] = points?.toJson();
    }
    if (customItems != null) {
      _data["custom_items"] = customItems?.toJson();
    }
    if (tags != null) {
      _data["tags"] = tags?.toJson();
    }
    if (timeEstimates != null) {
      _data["time_estimates"] = timeEstimates?.toJson();
    }
    if (checklists != null) {
      _data["checklists"] = checklists?.toJson();
    }
    if (zoom != null) {
      _data["zoom"] = zoom?.toJson();
    }
    if (milestones != null) {
      _data["milestones"] = milestones?.toJson();
    }
    if (customFields != null) {
      _data["custom_fields"] = customFields?.toJson();
    }
    if (remapDependencies != null) {
      _data["remap_dependencies"] = remapDependencies?.toJson();
    }
    if (dependencyWarning != null) {
      _data["dependency_warning"] = dependencyWarning?.toJson();
    }
    if (statusPies != null) {
      _data["status_pies"] = statusPies?.toJson();
    }
    if (multipleAssignees != null) {
      _data["multiple_assignees"] = multipleAssignees?.toJson();
    }
    if (portfolios != null) {
      _data["portfolios"] = portfolios?.toJson();
    }
    if (emails != null) {
      _data["emails"] = emails?.toJson();
    }
    return _data;
  }
}

class Emails {
  bool? enabled;

  Emails({this.enabled});

  Emails.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class Portfolios {
  bool? enabled;

  Portfolios({this.enabled});

  Portfolios.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class MultipleAssignees {
  bool? enabled;

  MultipleAssignees({this.enabled});

  MultipleAssignees.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class StatusPies {
  bool? enabled;

  StatusPies({this.enabled});

  StatusPies.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class DependencyWarning {
  bool? enabled;

  DependencyWarning({this.enabled});

  DependencyWarning.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class RemapDependencies {
  bool? enabled;

  RemapDependencies({this.enabled});

  RemapDependencies.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class CustomFields {
  bool? enabled;

  CustomFields({this.enabled});

  CustomFields.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class Milestones {
  bool? enabled;

  Milestones({this.enabled});

  Milestones.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class Zoom {
  bool? enabled;

  Zoom({this.enabled});

  Zoom.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class Checklists {
  bool? enabled;

  Checklists({this.enabled});

  Checklists.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class TimeEstimates {
  bool? enabled;
  bool? rollup;
  bool? perAssignee;

  TimeEstimates({this.enabled, this.rollup, this.perAssignee});

  TimeEstimates.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
    rollup = json["rollup"];
    perAssignee = json["per_assignee"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    _data["rollup"] = rollup;
    _data["per_assignee"] = perAssignee;
    return _data;
  }
}

class Tags {
  bool? enabled;

  Tags({this.enabled});

  Tags.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class CustomItems {
  bool? enabled;

  CustomItems({this.enabled});

  CustomItems.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class Points {
  bool? enabled;

  Points({this.enabled});

  Points.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class Sprints {
  bool? enabled;

  Sprints({this.enabled});

  Sprints.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class DueDates {
  bool? enabled;
  bool? startDate;
  bool? remapDueDates;
  bool? remapClosedDueDate;

  DueDates({this.enabled, this.startDate, this.remapDueDates, this.remapClosedDueDate});

  DueDates.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
    startDate = json["start_date"];
    remapDueDates = json["remap_due_dates"];
    remapClosedDueDate = json["remap_closed_due_date"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    _data["start_date"] = startDate;
    _data["remap_due_dates"] = remapDueDates;
    _data["remap_closed_due_date"] = remapClosedDueDate;
    return _data;
  }
}

class Statuses {
  String? id;
  String? status;
  String? type;
  int? orderindex;
  String? color;

  Statuses({this.id, this.status, this.type, this.orderindex, this.color});

  Statuses.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    status = json["status"];
    type = json["type"];
    orderindex = json["orderindex"];
    color = json["color"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["status"] = status;
    _data["type"] = type;
    _data["orderindex"] = orderindex;
    _data["color"] = color;
    return _data;
  }
}
