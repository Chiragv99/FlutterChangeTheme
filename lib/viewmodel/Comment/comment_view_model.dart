import 'package:fluttercustomtheme/model/getCommentModel.dart';

class CommentViewModel {
  final GetCommentModel? getCommentModel;

  CommentViewModel({this.getCommentModel});

  String get name {
    return getCommentModel!.name;
  }

  String get body {
    return getCommentModel!.body!;
  }

  String get email {
    return getCommentModel!.email;
  }
}