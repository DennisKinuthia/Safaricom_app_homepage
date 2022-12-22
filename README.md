# Safaricom App Home Page 

## To Celebrate This Festive Season 🎊🎉🎁

I designed the Safaricom app home page as it looked from 21st December 2022 using flutter.
The Safaricom app UI was most likely built using React Native but I decided to design it using flutter and make it as close to the actuall app as I could save for the icons and colors.

## Awesome Features 😎👍🏽

## 1. Custon Scroll View

This is flutter's scrollview that allows creation of scrollable content. The Home page has a `CustomScrollView` that allows the body content to be scrollable

## 2. Slivers

A sliver is just a portion of a scrollable area. Flutter contains Slivers for making lists, grids, appbars and single child box-family widgets. Examples are 
* `SliverList`
* `SliverGrid`
* `SliverAppBar`
* `SliverToBoxAdapter`

## 3. SliverAppBar

This is an appbar that comes with scrolling capabilities and allows the app bar to have a background using the `FlexibleSpaceBar` widget that goes hand in hand with the `expandedHeight` property. The `FlexibleSpaceBar` takes in a background as a property which is then used to design the appbar's background. The appbar's background will have animations to display and disappear when scrolling.

## 4. Floating a button above the SliverAppBar's bottom margin
The SliverAppBar has a property called `bottom` that is used to define a bottom  tab bar. In this case I used it together with the `Transform.translate()` to offset a buttom, `(View My Balances)` button, from the `SliverAppBar` and have it floating ontop of the `SliverAppBar`'s bottom margin. 😎

## 5. ScrollController and NotificationListener

Safaricom app's app bar has a title that is centered when the appbar is expanded. The title shifts to the left when the app bar is collapsed. To achieve this effect a scroll controller is set to the `CustomScrollView`. An event listener is the set to the `CustomScrollView` that monitors the state of the app bar. When the app bar is collapsed the `centerTitle` boolean property is set to false and the title is aligned to the left and back to the center when the app bar is expanded.

## 6. SliverToBoxAdapter

I used a `SliverToBoxAdapter` to render a single child container as part of a sliver. Again, a sliver is a portion of a scrollable area and thus ordinary flutter `Container`s are not scrollable. To have a container within a scrollable area such that it scrolls together with the content, a `SliverToBoxAdapter` is wrapped around the `Container` widget

## 7. Offstage

I wrapped the first advertisment container with an `Offstage` widget which allows the entire advertisment container to be dismissed when the close button `X` is tapped. Simply set the `offstage` property of the `Offstage` widget to true to remove the widget from the `element` and `renderObject` trees

## 8. Flutter Carousel Slider package

Am awesome and well maintained package for creating flutter carousels. The complete documentation is available here 👉🏽 [Flutter Carousel Slider](https://pub.dev/packages/carousel_slider)

# Dependencies Used. Check `pubspec.yaml` file

1. [Google Font for Flutter](https://pub.dev/packages/google_fonts)
2. [Flutter Carousel Slider](https://pub.dev/packages/carousel_slider)


### Awesome icons are from [Flaticon](https://www.flaticon.com/free-icons)


# Output

![Simulator Screen Shot - iPhone 13 - 2022-12-23 at 02 57 45](https://user-images.githubusercontent.com/98651593/209239977-7ea1d3a5-c25b-410b-8263-d78a111db08b.png)
![Simulator Screen Shot - iPhone 13 - 2022-12-23 at 02 58 11](https://user-images.githubusercontent.com/98651593/209239979-7dc3a0cc-dbf4-4aa6-bb1c-105362a39a6c.png)

