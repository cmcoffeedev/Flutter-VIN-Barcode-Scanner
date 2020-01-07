class Models {
  int count;
  String message;
  String searchCriteria;
  List<ModelResults> results;

  Models({this.count, this.message, this.searchCriteria, this.results});

  Models.fromJson(Map<String, dynamic> json) {
    count = json['Count'];
    message = json['Message'];
    searchCriteria = json['SearchCriteria'];
    if (json['Results'] != null) {
      results = new List<ModelResults>();
      json['Results'].forEach((v) {
        results.add(new ModelResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Count'] = this.count;
    data['Message'] = this.message;
    data['SearchCriteria'] = this.searchCriteria;
    if (this.results != null) {
      data['Results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ModelResults {
  int makeID;
  String makeName;
  int modelID;
  String modelName;

  ModelResults({this.makeID, this.makeName, this.modelID, this.modelName});

  ModelResults.fromJson(Map<String, dynamic> json) {
    makeID = json['Make_ID'];
    makeName = json['Make_Name'];
    modelID = json['Model_ID'];
    modelName = json['Model_Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Make_ID'] = this.makeID;
    data['Make_Name'] = this.makeName;
    data['Model_ID'] = this.modelID;
    data['Model_Name'] = this.modelName;
    return data;
  }
}
