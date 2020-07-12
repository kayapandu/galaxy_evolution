import 'package:flutter/material.dart';

//screen
import 'package:galaxy/detail_screen.dart';

//model
import 'package:galaxy/model/galaxy.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evolution of Galaxy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Evolution of Galaxy',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.pages), onPressed: null)
          ],
        ),
        body: ListOfGalaxy());
  }
}

class ListOfGalaxy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listGalaxy.map((item) {
        return ItemWrapper(item);
      }).toList(),
    );
  }
}

class ItemWrapper extends StatelessWidget {
  final Galaxy item;
  ItemWrapper(this.item);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(item);
        }));
      },
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(item.image_url),
            ),
            Expanded(
                flex: 1,
                child: Text(item.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)))
          ],
        ),
      )),
    );
  }
}

var listGalaxy = [
  Galaxy(
      image_url: 'images/s1.jpg',
      name: "Galaxy S",
      description:
          "First released in June 2010, the Samsung Galaxy S ran on Android 2.1 and had an 800 x 480 Super AMOLED display. It also had a single-core 1GHz processor and 0.5GB of RAM. The rear camera was 5-megapixels, while the front was just 0.3-megapixels. The thing that really stood out about it was the customisation of Android. Although we'd seen some of TouchWiz on other devices, it felt like it worked on the Galaxy S."),
  Galaxy(
      image_url: 'images/s2.jpg',
      name: "Galaxy S2",
      description:
          "Also known as the Samsung Galaxy S II, the refreshed phone was released in April 2011 and sported a similar 800 x 480 screen as its predecessor. The processor got a bump up to dual-core and 1.2GHz, and there was 0.75GB of RAM.The rear camera was 8-megapixels this time, with a 2-megapixel front-facing cam. Samsung embraced widgets with the Galaxy S II, something that rival HTC was really pushing."),
  Galaxy(
      image_url: 'images/s3.jpg',
      name: "Galaxy S3",
      description:
          "Again sticking with the Roman numerals, so therefore technically known as the Samsung Galaxy S III, this model came out in May 2012 and was the first in the series to have an HD screen. Its resolution of 1280 x 720 was pretty revolutionary at the time. It also sported Android 4.0 Ice Cream Sandwich.There was a 1.4GHz quad-core processor with 1GB of RAM on launch, although Samsung stuck with an 8-megapixel rear camera. It was slightly more sculpted than the previous phone and it felt like Samsung wanted to push the design a little harder."),
  Galaxy(
      image_url: 'images/s4.jpg',
      name: "Galaxy S4",
      description:
          "Released in April 2013 and ditching the Roman numerals that nobody used when referring to Galaxy phones anyway, the S4 had a 5-inch Full HD display. It also upped the processing power to a 1.9GHz quad-core chip, with 2GB of RAM. The rear camera had a bump too, up to 13-megapixels. The design sense that we'd had from the S3 really came through here: the Galaxy S4 was a great phone, it just looked and felt right."),
  Galaxy(
      image_url: 'images/s5.jpg',
      name: "Galaxy S5",
      description:
          "Coming in April 2014, the S5 also had a Full HD screen but it was slightly bigger, measuring 5.1-inches (an LTE-A model eventually upped that to 2560 x 1440). There was a 2.5GHz quad-core processor on board, with 2GB of RAM. And the rear camera was once again improved, to a 16-megapixel module. But the most interesting thing about the Galaxy S5 was around the rear, with a texture like a sticking plaster. Samsung was still using removable plastic backs at this time."),
  Galaxy(
      image_url: 'images/s6.jpg',
      name: "Galaxy S6",
      description:
          "April 2015's Galaxy S line was the first to offer two separate devices at the same time. The more standard Galaxy S6 featured a flat 2560 x 1440 Quad HD Super AMOLED display, measuring 5.1-inches, while Samsung moved to embrace curved edges, resulting in the Galaxy S6 edge (below) and S6 edge+. It was a defining moment for the Galaxy S series, something that continues thereafter. It ran on a Samsung-made octa-core processor, had 3GB of RAM and a 16-megapixel rear camera capable of recording Ultra HD footage. A 5-megapixel camera was adopted for the front."),
  Galaxy(
      image_url: 'images/s6e.jpg',
      name: "Galaxy S6 Edge",
      description:
          "Like its stablemate also released in April 2015, the Galaxy S6 edge had a 5.1-inch Quad HD screen, octa-core processor, 3GB of RAM, 16-megapixel rear camera and 5-megapixel front-facing cam. Where it differed is that the sides of the display are curved and wrap around to give the illusion of no bezel - a radical alternative at the time."),
  Galaxy(
      image_url: 'images/s7.jpg',
      name: "Galaxy S7",
      description:
          "The Galaxy S7 was announced in February 2016 and came with a 5.1-inch QHD display (2560 x 1440). Like the S6 before it, it was the flat-screen version of two handsets, but added a dual-pixel 12-megapixel camera for better low light photography and faster octa-core processor. Samsung Pay was enabled on the phone, which could work through NFC and magnetic strip systems."),
  Galaxy(
      image_url: 'images/s7e.jpg',
      name: "Galaxy S7 Edge",
      description:
          "The Galaxy S7 edge was a true flagship phone in every respect. It too was announced in February 2016 and its 5.5-inch dual edge QHD display was simply superb. All of the same features as the S7 were on board and the design was a touch rounder than the S6 edge that preceded it."),
  Galaxy(
      image_url: 'images/s8.jpg',
      name: "Galaxy S8",
      description:
          "The Galaxy S7 edge was a true flagship phone in every respect. It too was announced in February 2016 and its 5.5-inch dual edge QHD display was simply superb. All of the same features as the S7 were on board and the design was a touch rounder than the S6 edge that preceded it."),
  Galaxy(
      image_url: 'images/s9.jpg',
      name: "Galaxy S9",
      description:
          "On the surface, the S9 looked very similar to the S8 from 2017. The phone still offered that curved edge design and came with a 5.8-inch OLED screen size and was once again, waterproof. The Galaxy S9 also offered AR emoji, which allows the phone to create a 3D avatar by scanning your face and creating a range of custom emoji for you. These could be used when chatting in WhatsApp or Facebook Messenger, for example, rather than using basic emoji. The Samsung Galaxy S9+ also launched alongside the S9 offering a dual aperture main camera that was a step up from the previous year."),
  Galaxy(
      image_url: 'images/s10.jpg',
      name: "Galaxy S10",
      description:
          "The Samsung Galaxy S10 launched alongside the larger S10+, the more affordable S10e and a 5G capable model. The 2019 flagship from Samsung featured a lot of the same design facets we grew to know and love. There were also some enhancements with this model that included market-leading concepts, like the UltraSonic fingerprint sensor. A triple-camera system, smart auto-camera suggestions and wireless reverse charging also made this another flagship to beat. It also had a punch hole camera on the front."),
  Galaxy(
      image_url: 'images/s20.jpg',
      name: "Galaxy S20",
      description:
          "The standard handset takes the Infinity Display concept further - almost eliminating the bezel entirely. It also switches the punch-hole front camera to the centre. The screen sizes of the S20 and S20+ are 6.2- and 6.7-inches respectively, with Quad HD+ (3200 x 1440) resolutions. They also have in-display fingerprint scanners, like their S10 predecessors. Perhaps the biggest generational leap comes with the bump up to a 120Hz refresh rate for each screen, with triple-lens cameras on both, with the S20+ also getting a Time-of-Flight camera. Both phones are 5G-enabled, with a 4G version of the S20 also available."),
  Galaxy(
      image_url: 'images/s20u.jpg',
      name: "Galaxy S20 Ultra",
      description:
          "The daddy of the 2020 range, the Samsung Galaxy S20 Ultra has a mammoth screen - 6.9-inches, Quad HD+ (3200 x 1440) and 120Hz - but is perhaps going to be best remembered in design terms for its huge camera unit on the rear. As well as a Time-of-Flight sensor, the Ultra sports 108-megapixel main, 48-megapixel 10x telephoto and 12-megapixel ultra wide cameras. It is also capable of up to 100x Space Zoom for some stunning long range photography. Just make sure you pack a tripod.")
];
