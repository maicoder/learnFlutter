import 'package:flutter/material.dart';
import 'package:flutter_douban/network/home_request.dart';
import 'package:flutter_douban/views/home/childCpns/movie_list_item.dart';

const COUNT = 20;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() {
    return _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {

  HomeRequest homeRequest = HomeRequest();

  int _start = 0;
  List movies = [];

  @override
  void initState() {
    super.initState();
    
    getMovieTopList(_start, COUNT);
  }

  void getMovieTopList(start, count) {
    homeRequest.getMovieTopList(start, count).then((result) {
      setState(() {
        movies.addAll(result);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        return MovieListItem(movies[index]);
      }
    );
  }
}