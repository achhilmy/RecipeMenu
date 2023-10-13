part of 'widgets.dart';

class CardHeaderHome extends StatelessWidget {
  const CardHeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/account/account.jpeg',
                height: 20,
                width: 20,
              ),
              const Icon(Icons.notifications)
            ],
          ),
          const SizedBox(height: 15),
          Text(
            "Hello, Hilmy",
            style: titleHeader.copyWith(color: cGrey),
          ),
          const SizedBox(height: 5),
          Text(
            "Make your own food,",
            style: titleHeader.copyWith(color: cBlack, fontSize: 20),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                "Stay at ",
                style: titleHeader.copyWith(color: cBlack, fontSize: 18),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    'Home',
                    style: titleHeader.copyWith(
                        fontWeight: FontWeight.w700,
                        color: starColor,
                        fontSize: 18),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
