import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movies_app/common/gen/assets.gen.dart';
import 'package:movies_app/network/network_services.dart';
import 'package:movies_app/screens/widgets/cardItem.dart';

import 'package:movies_app/widgets/resources/resources_model.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({super.key});

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  int currentIndex = 0;
late Future<Resources_model?> moviesFuture;
  PageController pageController = PageController(viewportFraction: .70);

@override
void initState() {
  super.initState();

  moviesFuture = NetworkServices.getListMovies("3D");
}
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return FutureBuilder<Resources_model?>(
      future: moviesFuture,
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (asyncSnapshot.hasError) {
          return Center(child: Text(asyncSnapshot.error.toString()));
        }
        Resources_model? resourcesModel = asyncSnapshot.data;
        if (resourcesModel == null ||
            resourcesModel.data == null ||
            resourcesModel.data!.movies!.isEmpty) {
          return Center(child: Text("somthing  went wrong \n try again later"));
        }
        List<Movies> movies = resourcesModel.data!.movies!;
        return Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                movies[currentIndex].largeCoverImage ?? "",
                width:double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: Container(color: Colors.black.withValues(alpha: .7)),
            ),

            ListView(
              children: [
                Image.asset(Assets.images.availableNow.path),

              
                SizedBox(
                  height: 350,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                     controller: pageController,

                    itemCount: movies.length,

                    onPageChanged: (index) {

                      setState(() {

                        currentIndex = index;

                      });
                    },
                    itemBuilder: (context, index) {
                      return MovieCard(movie: movies[index]);
                    },
                  ),
                ),

                Image.asset(Assets.images.watchNow.path),

                ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  title: Text("Action",style: theme.textTheme.titleSmall,),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("See More ",style: theme.textTheme.titleSmall!.copyWith(color: theme.hoverColor),),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_rounded, color: theme.hoverColor,),
                      ),
                    ],
                  ),
                ),
                Gap(10),

        
                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          movies[index].largeCoverImage ?? "",
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Gap(20);
                    },
                    itemCount: movies.length,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
