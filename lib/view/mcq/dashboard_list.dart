part of 'home.dart';

List<Widget> getHomeList(BuildContext context) => [
      // dashboardCard(
      //   context,
      //   title: "Tester",
      //   page: const TesterPage(),
      //   subtitle: 'Testing of api',
      // ),
      FutureBuilder(
        future: QuestionDb().getMCQCategories(),
        builder:
            (BuildContext context, AsyncSnapshot<List<MCQCategory>> snapshot) {
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
                  page:  MCQCategories(categoryList: snapshot.data!, department: snapy[index],),
                  subtitle: 'Department',
                );
              });
        },
      ),
      dashboardCard(
        context,
        title: "Ads",
        icon: Icons.settings,
        page: AddSlider(ref: MyGlobals.homeBannerCollection),
        subtitle: 'Place your Ads',
      ),
    ];
