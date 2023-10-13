part of 'widgets.dart';

class CardPopulerWidget extends StatelessWidget {
  const CardPopulerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemPopulerModel> itemsData = [
      ItemPopulerModel(
          0,
          'https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg',
          'Hoem',
          'Some info'),
      ItemPopulerModel(
          1,
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg',
          'Wallet',
          'Some info'),
      ItemPopulerModel(
          2,
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg',
          'Alarm',
          'Some info'),
      ItemPopulerModel(
          3,
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg',
          'My location',
          'Some info'),
      ItemPopulerModel(
          4,
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg',
          'Laptop',
          'Some info'),
      ItemPopulerModel(
          5,
          'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg',
          'Backup',
          'Some info'),
      ItemPopulerModel(
          6,
          "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg",
          'Settings',
          'Some info'),
      ItemPopulerModel(
          7,
          "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg",
          'Call',
          'Some info'),
      ItemPopulerModel(
          8,
          "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg",
          'Restore',
          'Some info'),
      ItemPopulerModel(
          9,
          "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg",
          'Camera',
          'Some info'),
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Populer Recipes",
            style:
                titleText.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.2,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.5 / 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0),
                itemCount: itemsData.length,
                itemBuilder: (BuildContext contex, index) {
                  return CardPopulerItemsWidget(
                    images: itemsData[index].images,
                    titles: itemsData[index].title,
                    subTitle: itemsData[index].description,
                  );
                }),
          )
          // CardPopulerItemsWidget()
        ],
      ),
    );
  }
}

class CardPopulerItemsWidget extends StatelessWidget {
  const CardPopulerItemsWidget(
      {super.key, this.images, this.titles, this.subTitle});
  final String? images;
  final String? titles;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // height: 200,
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
              color: cGrey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(images.toString()),
          ),
        ),
        Text(titles.toString(), style: titleHeader.copyWith(fontSize: 17)),
        Text(subTitle.toString(), style: titleHeader.copyWith(color: cGrey))
      ],
    );
  }
}
