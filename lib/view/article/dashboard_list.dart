part of 'index.dart';

List<Widget> getHomeList(BuildContext context) => [
      FutureBuilder(
        future: ArticleDb().getCategories(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ArticlesCategory>> snapshot) {
          if (!snapshot.hasData) return Loading.spinKitFadingCircle();
          List<String> snapy = [];
          snapshot.data!.forEach((el) {
            if (!snapy.contains(el.department)) {
              snapy.add(el.department);
            }
          });
          return ListView.builder(
              shrinkWrap: true,
              itemCount: snapy.length,
              itemBuilder: (BuildContext context, int index) {
                return dashboardCard(
                  context,
                  title: snapy[index],
                  page: ArticlesPage(),
                  subtitle: 'Department',
                );
              });
        },
      ),
      // dashboardCard(
    
      dashboardCard(
        context,
        title: "Ads",
        icon: Icons.settings,
        page: AddSlider(ref: MyGlobals.notesSliderCollection),
        subtitle: 'Place your Ads',
      ),
    ];
