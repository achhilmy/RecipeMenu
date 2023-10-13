part of 'widgets.dart';

class CardSearch extends StatelessWidget {
  const CardSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cGrey.withOpacity(0.1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10),
              Text("Search")
              // TextField(),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt))
        ],
      ),
    );
  }
}
