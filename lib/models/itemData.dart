import 'item.dart';

class ItemData {
  List<Item> itemListMen = List.empty(growable: true);
  List<Item> itemListWomen = List.empty(growable: true);
  List<Item> itemListChildren = List.empty(growable: true);
  List<Item> itemList = List.empty(growable: true);
  String dropdownValue = "Relevance";
  @override
  ItemData() {
    Item itemTest = Item(
        "MXXX123563",
        "Oversized Fit Cotton T-shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/fa/c2/fac298b18bb28d11153894a6b812d9b1c3f378b8.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        20.99);
    Item itemTest1 = Item(
        "MXXX123563",
        "Oversized Fit Corduroy Overshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/09/70/0970adfc1f6d2efcf0d47366168c3eab144f5bdf.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        34.99);
    Item itemTest2 = Item(
        "MXXX123563",
        "Relaxed Fit Fleece Jacket",
        "https://lp2.hm.com/hmgoepprod?set=source[/75/24/75242b2557770b08724842c74192939825daae65.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        49.99);
    Item itemTest3 = Item(
        "MXXX123563",
        "2-pack Regular Fit Cotton Chino Shorts",
        "https://lp2.hm.com/hmgoepprod?set=source[/ef/49/ef4905a0d1417a14758020ca1159b0d3a7288e6e.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        49.99);
    Item itemTest4 = Item(
        "MXXX123563",
        "Regular Fit Cotton Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/69/df/69df76e908063b6b8aeaf70bad6c295c680a0cf7.jpg],origin[dam],category[men_shirts_casual],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        17.99);
    Item itemTest5 = Item(
        "MXXX123563",
        "Regular Fit Twill Cargo Pants",
        "https://lp2.hm.com/hmgoepprod?set=source[/e1/c1/e1c16fa71c3dfa3bd3e029a820a25ce0b483fb43.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        34.99);
    Item itemTest6 = Item(
        "MXXX123563",
        "Muscle Fit Piqué Polo Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/7f/78/7f78748ac9d5631b1e7b0079fe063010aa745db9.jpg],origin[dam],category[MEN_TSHIRTSTANKS_POLO],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        14.99);
    Item itemTest7 = Item(
        "MXXX123563",
        "Relaxed Fit Printed Hoodie",
        "https://lp2.hm.com/hmgoepprod?set=source[/b3/6c/b36c74120838934479ac5450e952be23fa59c6b3.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        39.99);
    Item itemTest8 = Item(
        "MXXX123563",
        "Regular Fit Overshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/0d/0a/0d0a35af652d00bf06d93fe32de3f7044e477983.jpg],origin[dam],category[men_jacketscoats_shirtjackets],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        24.99);

    itemListMen.add(itemTest);
    itemListMen.add(itemTest1);
    itemListMen.add(itemTest2);
    itemListMen.add(itemTest3);
    itemListMen.add(itemTest4);
    itemListMen.add(itemTest5);
    itemListMen.add(itemTest6);
    itemListMen.add(itemTest7);
    itemListMen.add(itemTest8);
    itemListMen.shuffle();

    itemTest = Item(
        "MXXX123563",
        "Relaxed Fit Printed T-shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/8a/bc/8abc55ce1424c1b495445798ffb26bb55ba56cd0.jpg],origin[dam],category[men_tshirtstanks_printed],type[DESCRIPTIVESTILLLIFE],res[w],hmver[2]&call=url[file:/product/main]",
        0,
        19.99);
    itemTest1 = Item(
        "MXXX123563",
        "Oversized Fit Rugby Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/5e/30/5e30f492a8ac9132a8baa65578174bf98af5e5eb.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        24.99);
    itemTest2 = Item(
        "MXXX123563",
        "Oversized Fit Corduroy Overshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/95/28/952819029a718bf99c33204c831b05f6d5a9b126.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        34.99);
    itemTest3 = Item(
        "MXXX123563",
        "Regular Fit Joggers",
        "https://lp2.hm.com/hmgoepprod?set=source[/6e/16/6e163ff4077a63fafaed6ae1e54ae79e0a137b72.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        17.99);
    itemTest4 = Item(
        "MXXX123563",
        "Slim Fit Blazer",
        "https://lp2.hm.com/hmgoepprod?set=source[/fb/7e/fb7e0cffb86caff3ec670cd8da3b1a678dcc57c4.jpg],origin[dam],category[men_blazerssuits_blazers],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        69.99);
    itemTest5 = Item(
        "MXXX123563",
        "Slim Fit Suit Pants",
        "https://lp2.hm.com/hmgoepprod?set=source[/54/e5/54e5407df2707196d04654ffd034afa1b4bd84f8.jpg],origin[dam],category[men_trousers_dressed],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        34.99);
    itemTest6 = Item(
        "MXXX123563",
        "Skinny Jeans",
        "https://lp2.hm.com/hmgoepprod?set=source[/f4/72/f472300fb43decf6dcffaece4e2c3249073615e3.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        39.99);
    itemTest7 = Item(
        "MXXX123563",
        "Skinny Fit Cotton Chinos",
        "https://lp2.hm.com/hmgoepprod?set=source[/71/12/71129aaa92778f6bc9bec7fcde751f5cdecdc995.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        29.99);
    itemTest8 = Item(
        "MXXX123563",
        "Relaxed Fit Cotton Shorts",
        "https://lp2.hm.com/hmgoepprod?set=source[/fb/17/fb17f8e810e8517805831ea91148db29a5f06f66.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        12.99);
    itemListMen.add(itemTest);
    itemListMen.add(itemTest1);
    itemListMen.add(itemTest2);
    itemListMen.add(itemTest3);
    itemListMen.add(itemTest4);
    itemListMen.add(itemTest5);
    itemListMen.add(itemTest6);
    itemListMen.add(itemTest7);
    itemListMen.add(itemTest8);
    itemListMen.shuffle();

    itemTest = Item(
        "MXXX123563",
        "V-neck Blouse",
        "https://lp2.hm.com/hmgoepprod?set=source[/5e/d1/5ed14e08da372aa9f8ba4a3cef42caf255c49546.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        17.99);
    itemTest1 = Item(
        "MXXX123563",
        "Oversized Fit Rugby Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/40/ef/40efbab2fd2d075e48bdfbf9eef62f6bb111a2a4.jpg],origin[dam],category[ladies_cardigansjumpers_cardigans],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        19.99);
    itemTest2 = Item(
        "MXXX123563",
        "Pleated Chiffon Dress",
        "https://lp2.hm.com/hmgoepprod?set=source[/bd/3d/bd3d52e70069cfddc16a83de12c284b604cd0695.jpg],origin[dam],category[ladies_dresses_mididresses],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        49.99);
    itemTest3 = Item(
        "MXXX123563",
        "90s Boyfriend Jeans",
        "https://lp2.hm.com/hmgoepprod?set=source[/ff/13/ff135adbf071b460fd1ba949294a69934fb6fd0f.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        39.99);
    itemTest4 = Item(
        "MXXX123563",
        "Oversized Hooded Jacket",
        "https://lp2.hm.com/hmgoepprod?set=source[/83/b3/83b356d257923dc276fc2138e29370e7bf22b7c1.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        29.99);
    itemTest5 = Item(
        "MXXX123563",
        "Crease-leg Leggings",
        "https://lp2.hm.com/hmgoepprod?set=source[/0d/d1/0dd10685b770cebb9b690f83fbed0b8994219c97.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        24.99);
    itemTest6 = Item(
        "MXXX123563",
        "Cotton-blend Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/58/4d/584d9cb6e2bfb25b23982c099edfc166775ed473.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        17.99);
    itemTest7 = Item(
        "MXXX123563",
        "Oversized Sweatshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/61/c1/61c1400a0aa59057143e0d0a439155e471df47ad.jpg],origin[dam],category[ladies_hoodiesswetshirts_sweatshirts],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        34.99);
    itemTest8 = Item(
        "MXXX123563",
        "Corduroy Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/39/f7/39f74b817043e1bbf466b99bbafe061701d4a939.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        29.99);

    itemListWomen.add(itemTest);
    itemListWomen.add(itemTest1);
    itemListWomen.add(itemTest2);
    itemListWomen.add(itemTest3);
    itemListWomen.add(itemTest4);
    itemListWomen.add(itemTest5);
    itemListWomen.add(itemTest6);
    itemListWomen.add(itemTest7);
    itemListWomen.add(itemTest8);
    itemListWomen.shuffle();

    itemTest = Item(
        "MXXX123563",
        "Short Hooded Sweatshirt Jacket",
        "https://lp2.hm.com/hmgoepprod?set=source[/cc/98/cc984d7dfd0392ea1e312e06c520536f04867d1a.jpg],origin[dam],category[ladies_basics],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        17.99);
    itemTest1 = Item(
        "MXXX123563",
        "Wrap Dress with Collar",
        "https://lp2.hm.com/hmgoepprod?set=source[/72/7b/727ba371aed46ee1aaf61cf97730f0c70a771865.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        29.99);
    itemTest2 = Item(
        "MXXX123563",
        "High Waist Denim Shorts",
        "https://lp2.hm.com/hmgoepprod?set=source[/cc/93/cc93c970aeeb3e253aa1c8a642e59281e063e969.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        29.99);
    itemTest3 = Item(
        "MXXX123563",
        "Wide-cut Blouse",
        "https://lp2.hm.com/hmgoepprod?set=source[/43/31/4331589f31d420721f666e20b31b1182b30b522a.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        24.99);
    itemTest4 = Item(
        "MXXX123563",
        "Crop Baseball Jacket",
        "https://lp2.hm.com/hmgoepprod?set=source[/5d/3d/5d3dd00d376e11d309e40800e13f75caa5aaedce.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        39.99);
    itemTest5 = Item(
        "MXXX123563",
        "Crop Shacket",
        "https://lp2.hm.com/hmgoepprod?set=source[/76/66/766674ad5c99112d2e7e8a7bd3e80e4b8143dd14.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        34.99);
    itemTest6 = Item(
        "MXXX123563",
        "Flared Low Jeans",
        "https://lp2.hm.com/hmgoepprod?set=source[/58/4d/584d9cb6e2bfb25b23982c099edfc166775ed473.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        29.99);
    itemTest7 = Item(
        "MXXX123563",
        "Front Zip Top",
        "https://lp2.hm.com/hmgoepprod?set=source[/08/cd/08cdc4dd7db20d1b1cb322a7b1f2dc0c096657e0.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        17.99);
    itemTest8 = Item(
        "MXXX123563",
        "Cable-knit Cardigan",
        "https://lp2.hm.com/hmgoepprod?set=source[/bd/e7/bde7939a63088da2895dc45a1aa1aa9dbb6f0744.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        1,
        24.99);

    itemListWomen.add(itemTest);
    itemListWomen.add(itemTest1);
    itemListWomen.add(itemTest2);
    itemListWomen.add(itemTest3);
    itemListWomen.add(itemTest4);
    itemListWomen.add(itemTest5);
    itemListWomen.add(itemTest6);
    itemListWomen.add(itemTest7);
    itemListWomen.add(itemTest8);
    itemListWomen.shuffle();

    itemTest = Item(
        "MXXX123563",
        "Oversized Printed T-shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/21/49/21496a834ed7dd841c65774e1e992aaf90263af9.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        14.99);
    itemTest1 = Item(
        "MXXX123563",
        "Oversized Printed Sweatshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/ec/6a/ec6a2b538ca6c08d4bb0433338bbb18f4390a159.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        24.99);
    itemTest2 = Item(
        "MXXX123563",
        "Relaxed Fit Jeans",
        "https://lp2.hm.com/hmgoepprod?set=source[/b8/ec/b8ece14f27d2e236cf23a1d33c882669d4d7d35d.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        9.99);
    itemTest3 = Item(
        "MXXX123563",
        "Twill Shorts",
        "https://lp2.hm.com/hmgoepprod?set=source[/0b/11/0b1169085b88dbe42b3677d9f35d80435d728cd6.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        14.99);
    itemTest4 = Item(
        "MXXX123563",
        "Cotton Chino Shorts",
        "https://lp2.hm.com/hmgoepprod?set=source[/b4/5d/b45df7e0c6f1374f19c32225d4fda2761182d896.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        9.99);
    itemTest5 = Item(
        "MXXX123563",
        "Patterned Jersey Dress",
        "https://lp2.hm.com/hmgoepprod?set=source[/b6/2c/b62c45cb3ee9db1cfbc46177fa00f4b9f953e9ff.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        4.99);
    itemTest6 = Item(
        "MXXX123563",
        "Belted Shirt Dress",
        "https://lp2.hm.com/hmgoepprod?set=source[/07/8d/078d89dcd0615c146b1344c70cfadac8cd0d4a6a.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        14.99);
    itemTest7 = Item(
        "MXXX123563",
        "3-pack Cotton T-shirts",
        "https://lp2.hm.com/hmgoepprod?set=source[/5b/af/5bafccd02a7a0139047dc0eb0e1043117a184bc4.jpg],origin[dam],category[kids_clothing_tops_tshirts],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        29.99);
    itemTest8 = Item(
        "MXXX123563",
        "4-piece Set",
        "https://lp2.hm.com/hmgoepprod?set=source[/9d/73/9d7391290da28af40b83d399cc8a1e13a976442c.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        2,
        34.99);

    itemListChildren.add(itemTest);
    itemListChildren.add(itemTest1);
    itemListChildren.add(itemTest2);
    itemListChildren.add(itemTest3);
    itemListChildren.add(itemTest4);
    itemListChildren.add(itemTest5);
    itemListChildren.add(itemTest6);
    itemListChildren.add(itemTest7);
    itemListChildren.add(itemTest8);
    itemListChildren.shuffle();

    itemList.addAll(itemListMen);
    itemList.addAll(itemListWomen);
    itemList.addAll(itemListChildren);
  }
}
