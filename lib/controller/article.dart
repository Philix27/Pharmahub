// import 'package:dio/dio.dart';
import 'package:pharmahub/api/notes.dart';
import 'package:pharmahub/models/article.dart';
import 'package:pharmahub/models/article_category.dart';

class ArticleDb {
  final NotesApi notesAPI = NotesApi();
  Future<List<Article>> getAllArticles() async {
    List<Article> _questions = [];
    try {
      var listOfMaps = await notesAPI.getAll();
      for (var i in listOfMaps) {
        _questions.add(Article.fromMap(i));
      }
    } catch (e) {
      // print(e);
    }

    return _questions;
  }

  Future<List<ArticlesCategory>> getCategories() async {
    List<ArticlesCategory> _categories = [];
    try {
      var listOfMaps = await notesAPI.getAllCategory();
      for (var i in listOfMaps) {
        _categories.add(ArticlesCategory.fromMap(i));
      }
    } catch (e) {
      // print(e);
    }

    return _categories;
  }

  Future<List<Article>> getFor(String category) async {
    List<Article> _questions = [];
    try {
      var listOfMaps = await notesAPI.getAll();
      for (var i in listOfMaps) {
        if (i['category'].toString().toLowerCase() == category.toLowerCase()) {
          _questions.add(Article.fromMap(i));
        }
      }
    } catch (e) {
      // print(e);
    }

    return _questions;
  }
}
