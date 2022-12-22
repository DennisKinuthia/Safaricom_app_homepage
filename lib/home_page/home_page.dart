import 'package:flutter/material.dart';
import 'package:safaricom/home_page/components/custom_bottom_navbar.dart';
import 'package:safaricom/home_page/components/data_page_advert.dart';
import 'package:safaricom/home_page/components/floating_action_button.dart';
import 'package:safaricom/home_page/components/hot_deals_row.dart';
import 'package:safaricom/home_page/components/my_app_bar.dart';
import 'package:safaricom/home_page/components/option_card_grid.dart';
import 'package:safaricom/home_page/components/promotion_carousel.dart';
import 'package:safaricom/home_page/components/upper_grid_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _scrollController;
  EdgeInsetsGeometry _titlePadding = const EdgeInsets.only(bottom: 40.0);
  bool _centerTitle = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50) {
        setState(() {
          _centerTitle = false;
          _titlePadding = const EdgeInsets.only(bottom: 18.0, left: 32.0);
        });
      } else {
        setState(() {
          _centerTitle = true;
          _titlePadding = const EdgeInsets.only(bottom: 40.0);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const MyFloatingActionButton(),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          MyAppBar(centerTitle: _centerTitle, titlePadding: _titlePadding),
          const NewDataPageAdvertBox(),
          const UpperGridSection(),
          const OptionCardGrid(),
          const HotDealsRow(),
          const PromotionCarousel(),
        ],
      ),
    );
  }
}
