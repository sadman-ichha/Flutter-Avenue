import 'package:flutter/material.dart';

class SliversAppBar extends StatelessWidget {
  const SliversAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        pinned: true,
        centerTitle: false,
        stretch: true,
        floating: true,
        expandedHeight: 200.0,
        flexibleSpace: const FlexibleSpaceBar(
            stretchModes: <StretchMode>[
              StretchMode.blurBackground,
              StretchMode.blurBackground,
              StretchMode.fadeTitle,
            ],
            background: Image(
              image: AssetImage("assets/images/feature.png"),
              fit: BoxFit.cover,
            )),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(100.5),
          child: SearchBar(),
        ));
  }
}

// only ui search bar design

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          margin: EdgeInsets.zero,
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20.0) / 2,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 12.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Restaurants or dish...',
                ),
              ),
            ),
          ),
        ));
  }
}
