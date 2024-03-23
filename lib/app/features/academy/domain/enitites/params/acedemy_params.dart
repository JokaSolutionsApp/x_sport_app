class SuggestedAcademyParams {
  final int pageSize;
  final int pageNumber;
  SuggestedAcademyParams({
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
