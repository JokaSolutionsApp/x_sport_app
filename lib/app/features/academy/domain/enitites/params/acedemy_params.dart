class SuggestedAcademyParams {
  final int pageSize;
  final int pageNumber;
  final int sportId;
  SuggestedAcademyParams({
    required this.pageSize,
    required this.pageNumber,
    required this.sportId,
  });

  Map<String, dynamic> toMap() {
    return {
      "PageNumber": pageNumber,
      "PageSize": pageSize,
      "sportId": sportId,
    };
  }
}

class AllAcademiesParams {
  final int pageSize;
  final int pageNumber;
  AllAcademiesParams({
    required this.pageSize,
    required this.pageNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      "PageNumber": pageNumber,
      "PageSize": pageSize,
    };
  }
}

class CourseParams {
  final int academyId;
  final int ageCategoryId;
  final int genderId;

  CourseParams({
    required this.academyId,
    required this.ageCategoryId,
    required this.genderId,
  });

  Map<String, dynamic> toMap() {
    return {
      "academyId": academyId,
      "ageCategoryId": ageCategoryId,
      "genderId": genderId,
    };
  }
}

class InrollUserInCourseParams {
  final int uId;
  final int courseId;
  final bool isPersonal;
  final int relativeId;
  final String name;
  final String residencePlace;
  final String phone;

  InrollUserInCourseParams({
    required this.uId,
    required this.courseId,
    required this.isPersonal,
    required this.relativeId,
    required this.name,
    required this.residencePlace,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      "uId": uId,
      "courseId": courseId,
      "isPersonal": isPersonal,
      "relativeId": relativeId,
      "name": name,
      "residencePlace": residencePlace,
      "phone": phone
    };
  }
}

class AddAcademyReviewParams {
  final int academyId;
  final int reviewText;
  final bool evaluation;

  AddAcademyReviewParams({
    required this.academyId,
    required this.reviewText,
    required this.evaluation,
  });

  Map<String, dynamic> toMap() {
    return {
      "academyId": academyId,
      "reviewText": reviewText,
      "evaluation": evaluation,
    };
  }
}
