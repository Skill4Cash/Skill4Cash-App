import 'package:Skill4Cash/src/core/routes/route_manager.dart';
import 'package:Skill4Cash/src/core/utilities/app_textstyle.dart';
import 'package:Skill4Cash/src/core/utilities/constants.dart';
// import 'package:Skill4Cash/src/features/customers/settings_customer/settings_screen.dart';
// import 'package:Skill4Cash/src/features/widgets/app_button.dart';
import 'package:Skill4Cash/src/features/widgets/app_dialog.dart';
// import 'package:Skill4Cash/src/features/widgets/app_textfield.dart';
// import 'package:Skill4Cash/src/features/widgets/service_pill.dart';
import 'package:flutter/material.dart';
import 'package:Skill4Cash/src/features/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool select = false;
    List<UserLocation> _userLocation = [
      UserLocation(location: "Abia", subLocation: [
        "Aba North",
        "Aba South",
        "Arochukwu",
        "Bende",
        "Isiala Ngwa South",
        "Ikwuano",
        "Isiala",
        "Ngwa North",
        "Isukwuato",
        "Ukwa West",
        "Ukwa East",
        "Umuahia",
        "Umuahia South"
      ]),
      UserLocation(location: "Adamawa", subLocation: [
        "Demsa",
        "Fufore",
        "Ganye",
        "Girei",
        "Gombi",
        "Jada",
        "Yola North",
        "Lamurde",
        "Madagali",
        "Maiha",
        "Mayo-Belwa",
        "Michika",
        "Mubi South",
        "Numna",
        "Shelleng",
        "Song",
        "Toungo",
        "Jimeta",
        "Yola South",
        "Hung"
      ]),
      UserLocation(location: "Anambra", subLocation: [
        "Aguata",
        "Anambra",
        "Anambra West",
        "Anaocha",
        "Awka South",
        "Awka North",
        "Ogbaru",
        "Onitsha South",
        "Onitsha North",
        "Orumba North",
        "Orumba South",
        "Oyi"
      ]),
      UserLocation(location: "Akwa ibom", subLocation: [
        "Abak",
        "Eastern Obolo",
        "Eket",
        "Essien Udim",
        "Etimekpo",
        "Etinan",
        "Ibeno",
        "Ibesikpo Asutan",
        "Ibiono Ibom",
        "Ika",
        "Ikono",
        "Ikot Abasi",
        "Ikot Ekpene",
        "Ini",
        "Itu",
        "Mbo",
        "Mkpat Enin",
        "Nsit Ibom",
        "Nsit Ubium",
        "Obot Akara",
        "Okobo",
        "Onna",
        "Orukanam",
        "Oron",
        "Udung Uko",
        "Ukanafun",
        "Esit Eket",
        "Uruan",
        "Urue Offoung",
        "Oruko Ete",
        "Uyo"
      ]),
      UserLocation(location: "Bauchi", subLocation: [
        "Alkaleri",
        "Bauchi",
        "Bogoro",
        "Darazo",
        "Dass",
        "Gamawa",
        "Ganjuwa",
        "Giade",
        "Jama`are",
        "Katagum",
        "Kirfi",
        "Misau",
        "Ningi",
        "Hira",
        "Tafawa Balewa",
        "Itas gadau",
        "Toro",
        "Warji",
        "Zaki",
        "Dambam"
      ]),
      UserLocation(location: "Bayelsa", subLocation: [
        "Brass",
        "Ekeremor",
        "Kolok/Opokuma",
        "Nembe",
        "Ogbia",
        "Sagbama",
        "Southern Ijaw",
        "Yenagoa",
        "Membe"
      ]),
      UserLocation(location: "Benue", subLocation: [
        "Ador",
        "Agatu",
        "Apa",
        "Buruku",
        "Gboko",
        "Guma",
        "Gwer East",
        "Gwer West",
        "Kastina-ala",
        "Konshisha",
        "Kwande",
        "Logo",
        "Makurdi",
        "Obi",
        "Ogbadibo",
        "Ohimini",
        "Oju",
        "Okpokwu",
        "Oturkpo",
        "Tarka",
        "Ukum",
        "Vandekya"
      ]),
      UserLocation(location: "Borno", subLocation: [
        "Abadan",
        "Askira/Uba",
        "Bama",
        "Bayo",
        "Biu",
        "Chibok",
        "Damboa",
        "Dikwagubio",
        "Guzamala",
        "Gwoza",
        "Hawul",
        "Jere",
        "Kaga",
        "Kalka/Balge",
        "Konduga",
        "Kukawa",
        "Kwaya-ku",
        "Mafa",
        "Magumeri",
        "Maiduguri",
        "Marte",
        "Mobbar",
        "Monguno",
        "Ngala",
        "Nganzai",
        "Shani"
      ]),
      UserLocation(location: "Cross River", subLocation: [
        "Abia",
        "Akampa",
        "Akpabuyo",
        "Bakassi",
        "Bekwara",
        "Biase",
        "Boki",
        "Calabar South",
        "Etung",
        "Ikom",
        "Obanliku",
        "Obubra",
        "Obudu",
        "Odukpani",
        "Ogoja",
        "Ugep North",
        "Yala",
        "Yarkur"
      ]),
      UserLocation(location: "Delta", subLocation: [
        "Aniocha South",
        "Anioha",
        "Bomadi",
        "Burutu",
        "Ethiope west",
        "Ethiope east",
        "Ika south",
        "Ika north east",
        "Isoko south",
        "Isoko north",
        "Ndokwa east",
        "Ndokwa west",
        "Okpe",
        "Oshimili north",
        "Oshimili south",
        "Patani",
        "Sapele",
        "Udu",
        "Ughelli south",
        "Ughelli north",
        "Ukwuani",
        "Uviwie",
        "Warri central",
        "Warri north",
        "Warri south"
      ]),
      UserLocation(location: "Ebonyi", subLocation: [
        "Abakaliki",
        "Afikpo south",
        "Afikpo north",
        "Ebonyi",
        "Ezza",
        "Ezza south",
        "Ikwo",
        "Ishielu",
        "Ivo",
        "Ohaozara",
        "Ohaukwu",
        "Onicha",
        "Izzi"
      ]),
      UserLocation(location: "Edo", subLocation: [
        "Akoko-Edo",
        "Egor",
        "Essann east",
        "Esan south east",
        "Esan central",
        "Esan west",
        "Etsako central",
        "Etsako east",
        "Etsako",
        "Orhionwon",
        "Ivia north",
        "Ovia south west",
        "Owan west",
        "Owan south",
        "Uhunwonde"
      ]),
      UserLocation(location: "Ekiti", subLocation: [
        "Ado Ekiti",
        "Effon Alaiye",
        "Ekiti south west",
        "Ekiti west",
        "Ekiti east",
        "Emure/ise",
        "Orun",
        "Ido",
        "Osi",
        "Ijero",
        "Ikere",
        "Ikole",
        "Ilejemeje",
        "Irepodun",
        "Ise/Orun",
        "Moba",
        "Oye",
        "Aiyekire"
      ]),
      UserLocation(location: "Enugu", subLocation: [
        "Awgu",
        "Aninri",
        "Enugu east",
        "Enugu south",
        "Enugu north",
        "Ezeagu",
        "Igbo Eze north",
        "Igbi etiti",
        "Nsukka",
        "Oji river",
        "Undenu",
        "Uzo Uwani",
        "Udi"
      ]),
      UserLocation(location: "Gombe", subLocation: [
        "Akko",
        "Balanga",
        "Billiri",
        "Dukku",
        "Dunakaye",
        "Gombe",
        "Kaltungo",
        "Kwami",
        "Nafada/Bajoga",
        "Shomgom",
        "Yamaltu/Deba"
      ]),
      UserLocation(location: "Imo", subLocation: [
        "Aboh-mbaise",
        "Ahiazu-Mbaise",
        "Ehime-Mbaino",
        "Ezinhite",
        "Ideato North",
        "Ideato south",
        "Ihitte/Uboma",
        "Ikeduru",
        "Isiala",
        "Isu",
        "Mbaitoli",
        "Ngor Okpala",
        "Njaba",
        "Nwangele",
        "Nkwere",
        "Obowo",
        "Aguta",
        "Ohaji Egbema",
        "Okigwe",
        "Onuimo",
        "Orlu",
        "Orsu",
        "Oru west",
        "Oru",
        "Owerri",
        "Owerri North",
        "Owerri south"
      ]),
      UserLocation(location: "Jigawa", subLocation: [
        "Auyo",
        "Babura",
        "Birnin- Kudu",
        "Birniwa",
        "Buji",
        "Dutse",
        "Garki",
        "Gagarawa",
        "Gumel",
        "Guri",
        "Gwaram",
        "Gwiwa",
        "Hadeji",
        "Jahun",
        "Kafin-Hausa",
        "kaugama",
        "Kazaure",
        "Kirikisamma",
        "Birnin-magaji",
        "Maigatari",
        "Malamaduri",
        "Miga",
        "Ringim",
        "Roni",
        "Sule Tankarka",
        "Taura",
        "Yankwasi"
      ]),
      UserLocation(location: "Kaduna", subLocation: [
        "Brnin Gwari",
        "Chukun",
        "Giwa",
        "Kajuru",
        "Igabi",
        "Ikara",
        "Jaba",
        "Jema`a",
        "Kachia",
        "Kaduna North",
        "Kaduna south",
        "Kagarok",
        "Kauru",
        "Kabau",
        "Kudan",
        "Kere",
        "Makarfi",
        "Sabongari",
        "Sanga",
        "Soba",
        "Zangon-Kataf",
        "Zaria"
      ]),
      UserLocation(location: "Abuja FCT", subLocation: [
        "Abaji",
        "Abuja Municipal",
        "Bwari",
        "Gwagwalada",
        "Kuje",
        "Kwali"
      ]),
      UserLocation(location: "Kano", subLocation: [
        "Ajigi",
        "Albasu",
        "Bagwai",
        "Bebeji",
        "Bichi",
        "Bunkure",
        "Dala",
        "Dambatta",
        "Dawakin kudu",
        "Dawakin tofa",
        "Doguwa",
        "Fagge",
        "Gabasawa",
        "Garko",
        "Garun mallam",
        "Gaya",
        "Gezawa",
        "Gwale",
        "Gwarzo",
        "Kano",
        "Karay",
        "Kibiya",
        "Kiru",
        "Kumbtso",
        "Kunch",
        "Kura",
        "Maidobi",
        "Makoda",
        "MInjibir Nassarawa",
        "Rano",
        "Rimin gado",
        "Rogo",
        "Shanono",
        "Sumaila",
        "Takai",
        "Tarauni",
        "Tofa",
        "Tsanyawa",
        "Tudunwada",
        "Ungogo",
        "Warawa",
        "Wudil"
      ]),
      UserLocation(location: "Katsina", subLocation: [
        "Bakori",
        "Batagarawa",
        "Batsari",
        "Baure",
        "Bindawa",
        "Charanchi",
        "Dan- Musa",
        "Dandume",
        "Danja",
        "Daura",
        "Dutsi",
        "Dutsin `ma",
        "Faskar",
        "Funtua",
        "Ingawa",
        "Jibiya",
        "Kafur",
        "Kaita",
        "Kankara",
        "Kankiya",
        "Katsina",
        "Furfi",
        "Kusada.Mai aduwa",
        "Malumfashi",
        "Mani",
        "Mash",
        "Matazu",
        "Musawa",
        "Rimi",
        "Sabuwa",
        "Safana",
        "Sandamu",
        "Zango"
      ]),
      UserLocation(location: "Kebbi", subLocation: [
        "Aliero",
        "Arewa Dandi",
        "Argungu",
        "Augie",
        "Bagudo",
        "Birnin Kebbi",
        "Bunza",
        "Dandi",
        "Danko",
        " Fakai",
        "Gwandu",
        "Jeda",
        "Kalgo",
        "Koko-besse",
        "Maiyaama",
        "Ngaski",
        "Sakaba",
        "Shanga",
        "Suru",
        "Wasugu",
        "Yauri",
        "Zuru"
      ]),
      UserLocation(location: "Kogi", subLocation: [
        "Adavi",
        "Ajaokuta",
        "Ankpa",
        "Bassa",
        "Dekina",
        "Yagba east",
        "Ibaji",
        "Idah",
        "Igalamela",
        "Ijumu",
        "Kabba bunu",
        "Kogi",
        "Mopa muro",
        "Ofu",
        "Ogori magongo",
        "Okehi",
        "Okene",
        "Olamaboro",
        "Omala",
        "Yagba west"
      ]),
      UserLocation(location: "Kwara", subLocation: [
        "Asa",
        "Baruten",
        "Ede",
        "Ekiti",
        "Ifelodun",
        "Ilorin south",
        "Ilorin west",
        "Ilorin east",
        "Irepodun",
        "Isin",
        "Kaiama",
        "Moro",
        "Offa",
        "Oke ero",
        "Oyun",
        "Pategi"
      ]),
      UserLocation(location: "Lagos", subLocation: [
        "Agege",
        "Alimosho Ifelodun",
        "Alimosho",
        "Amuwo-Odofin",
        "Apapa",
        "Badagry",
        "Epe",
        "Eti-Osa",
        "Ibeju- Lekki",
        "Ifako/Ijaye",
        "Ikeja",
        "Ikorodu",
        "Kosofe",
        "Lagos Island",
        "Lagos Mainland",
        "Mushin",
        "Ojo",
        "Oshodi-Isolo",
        "Shomolu",
        "Surulere"
      ]),
      UserLocation(location: "Nassarawa", subLocation: [
        "Akwanga",
        "Awe",
        "Doma",
        "Karu",
        "Keana",
        "Keffi",
        "Kokona",
        "Lafia",
        "Nassarawa",
        "Nassarawa/Eggon",
        "Obi",
        "Toto",
        "Wamba"
      ]),
      UserLocation(location: "Niger", subLocation: [
        "Agaie",
        "Agwara",
        "Bida",
        "Borgu",
        "Bosso",
        "Chanchanga",
        "Edati",
        "Gbako",
        "Gurara",
        "Kitcha",
        "Kontagora",
        "Lapai",
        "Lavun",
        "Magama",
        "Mariga",
        "Mokwa",
        "Moshegu",
        "Muya",
        "Paiko",
        "Rafi",
        "Shiroro",
        "Suleija",
        "Tawa-Wushishi"
      ]),
      UserLocation(location: "Ogun", subLocation: [
        "Abeokuta south",
        "Abeokuta north",
        "Ado-odo/otta",
        "Agbado south" "Agbado north",
        "Ewekoro",
        "Idarapo",
        "Ifo",
        "Ijebu east",
        "Ijebu north",
        "Ikenne",
        "Ilugun Alaro",
        "Imeko afon",
        "Ipokia",
        "Obafemi/owode",
        "Odeda",
        "Odogbolu",
        "Ogun waterside",
        "Sagamu"
      ]),
      UserLocation(location: "Ondo", subLocation: [""]),
      UserLocation(location: "location", subLocation: [
        "Akoko north",
        "Akoko north east",
        "Akoko south east",
        "Akoko south",
        "Akure north",
        "Akure",
        "Idanre",
        "Ifedore",
        "Ese odo",
        "Ilaje",
        "Ilaje oke-igbo",
        "Irele",
        "Odigbo",
        "Okitipupa",
        "Ondo",
        "Ondo east",
        "Ose",
        "Owo"
      ]),
      UserLocation(location: "Osun", subLocation: [
        "Atakumosa west",
        "Atakumosa east",
        "Ayeda-ade",
        "Ayedire",
        "Bolawaduro",
        "Boripe",
        "Ede",
        "Ede north",
        "Egbedore",
        "Ejigbo",
        "Ife north",
        "Ife central",
        "Ife south",
        "Ife east",
        "Ifedayo",
        "Ifelodun",
        "Ilesha west",
        "Ila-orangun",
        "Ilesah east",
        "Irepodun",
        "Irewole",
        "Isokan",
        "Iwo",
        "Obokun",
        "Odo-otin",
        "ola oluwa",
        "olorunda",
        "Oriade",
        "Orolu",
        "Osogbo"
      ]),
      UserLocation(location: "Oyo", subLocation: [
        "Afijio",
        "Akinyele",
        "Attba",
        "Atigbo",
        "Egbeda",
        "Ibadan",
        "Ibadan north east",
        "Ibadan central",
        "Ibadan south east",
        "Ibadan west south",
        "Ibarapa east",
        "Ibarapa north",
        "Ido",
        "Ifedapo",
        "Ifeloju",
        "Irepo",
        "Iseyin",
        "Itesiwaju",
        "Iwajowa",
        "Iwajowa olorunshogo",
        "Kajola",
        "Lagelu",
        "Ogbomosho north",
        "Ogo oluwa",
        "Oluyole",
        "Ona ara",
        "Ore lope",
        "Orire",
        "Oyo east",
        "Oyo west",
        "Saki east",
        "Saki west",
        "Surulere"
      ]),
      UserLocation(location: "Plateau", subLocation: [
        "Barkin/ladi",
        "Bassa",
        "Bokkos",
        "Jos north",
        "Jos east",
        "Jos south",
        "Kanam",
        "Kiyom",
        "Langtang north",
        "Langtang south",
        "Mangu",
        "Mikang",
        "Pankshin",
        "Qua`an pan",
        "Shendam",
        "Wase"
      ]),
      UserLocation(location: "Rivers", subLocation: [
        "Abua/Odial",
        "Ahoada west",
        "Akuku toru",
        "Andoni",
        "Asari toru",
        "Bonny",
        "Degema",
        "Eleme",
        "Emohua",
        "Etche",
        "Gokana",
        "Ikwerre",
        "Oyigbo",
        "Khana",
        "Obio/Akpor",
        "Ogba east /Edoni",
        "Ogu/bolo",
        "Okrika",
        "Omumma",
        "Opobo/Nkoro",
        "Portharcourt",
        "Tai"
      ]),
      UserLocation(location: "Sokoto", subLocation: [
        "Binji",
        "Bodinga",
        "Dange/shuni",
        "Gada",
        "Goronyo",
        "Gudu",
        "Gwadabawa",
        "Illela",
        "Kebbe",
        "Kware",
        "Rabah",
        "Sabon-Birni",
        "Shagari",
        "Silame",
        "Sokoto south",
        "Sokoto north",
        "Tambuwal",
        "Tangaza",
        "Tureta",
        "Wamakko",
        "Wurno",
        "Yabo"
      ]),
      UserLocation(location: "Taraba", subLocation: [
        "Akdo-kola",
        "Bali",
        "Donga",
        "Gashaka",
        "Gassol",
        "Ibi",
        "Jalingo",
        "K/Lamido",
        "Kurmi",
        "lan",
        "Sardauna",
        "Tarum",
        "Ussa",
        "Wukari",
        "Yorro",
        "Zing"
      ]),
      UserLocation(location: "Yobe", subLocation: [
        "Borsari",
        "Damaturu",
        "Fika",
        "Fune",
        "Geidam",
        "Gogaram",
        "Gujba",
        "Gulani",
        "Jakusko",
        "Karasuwa",
        "Machina",
        "Nagere",
        "Nguru",
        "Potiskum",
        "Tarmua",
        "Yunusari",
        "Yusufari",
        "Gashua"
      ]),
      UserLocation(location: "Zamfara", subLocation: [
        "Anka",
        "Bukkuyum",
        "Dungudu",
        "Chafe",
        "Gummi",
        "Gusau",
        "Isa",
        "Kaura Namoda",
        "Mradun",
        "Maru",
        "Shinkafi",
        "Talata Mafara",
        "Zumi"
      ])
    ];

    List<ServicePill> servicePill = [
      ServicePill(title: "Electrical", icon: Icons.bolt_outlined),
      ServicePill(title: "Vehicle", icon: Icons.directions_car),
      ServicePill(title: "Fashion", icon: Icons.female_outlined),
      ServicePill(title: "Catering", icon: Icons.lunch_dining_outlined),
      ServicePill(title: "Plumbing", icon: Icons.handyman_outlined),
      ServicePill(title: "Graphics Design", icon: Icons.female_outlined),
      ServicePill(title: "Website Development", icon: Icons.code),
      ServicePill(title: "Product Design", icon: Icons.female_outlined),
      ServicePill(title: "Painting ", icon: Icons.format_paint_outlined),
      ServicePill(title: "Printing", icon: Icons.computer),
      ServicePill(title: "Construction", icon: Icons.line_style_outlined),
      ServicePill(title: "Wellness", icon: Icons.medical_services_outlined),
    ];

    List<AroundMe> aroundMe = [
      AroundMe(
          image: spImage_1,
          title: "Wire, no frames electrical services",
          subtitle: "Electrical"),
      AroundMe(
          image: spImage_2,
          title: "Wonderous creations fashion house",
          subtitle: "Fashion"),
      AroundMe(
          image: spImage_3,
          title: "Fix your Auto Center",
          subtitle: "Automobile"),
      AroundMe(
          image: spImage_1,
          title: "Wire, no frames electrical services",
          subtitle: "Electrical"),
      AroundMe(
          image: spImage_2,
          title: "Wonderous creations fashion house",
          subtitle: "Fashion"),
      AroundMe(
          image: spImage_3,
          title: "Fix your Auto Center",
          subtitle: "Automobile"),
      AroundMe(
          image: spImage_1,
          title: "Wire, no frames electrical services",
          subtitle: "Electrical"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        // elevation: 0,

        centerTitle: true,
        title: TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AppDialog(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 24),
                      child: Column(
                        children: [
                          Text(
                            "Select an Option",
                            style: heading2(context),
                          ),
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: _userLocation.length,
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemBuilder:
                                      (context, index) => GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AppDialog(
                                                              child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        24,
                                                                    vertical:
                                                                        24),
                                                            child: Column(
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () =>
                                                                      Navigator.pop(
                                                                          context),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        size:
                                                                            13,
                                                                      ),
                                                                      kTinyHorizontalSpacing,
                                                                      Text(
                                                                        _userLocation[index]
                                                                            .location,
                                                                        style: heading2(
                                                                            context),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    child: ListView.builder(
                                                                        physics: BouncingScrollPhysics(),
                                                                        scrollDirection: Axis.vertical,
                                                                        shrinkWrap: true,
                                                                        itemCount: _userLocation[index].subLocation.length,
                                                                        itemBuilder: (context, index1) => Padding(
                                                                              padding: const EdgeInsets.all(12),
                                                                              child: Text(
                                                                                _userLocation[index].subLocation[index1],
                                                                                style: bodyNormalText(context),
                                                                              ),
                                                                            )),
                                                                  ),
                                                                ),
                                                                AppButton(
                                                                  label:
                                                                      "Apply",
                                                                  color:
                                                                      kPrimaryColor,
                                                                  onPressed:
                                                                      () {},
                                                                ),
                                                              ],
                                                            ),
                                                          )));
                                            },
                                            child: userLocation(context,
                                                text: _userLocation[index]
                                                    .location),
                                          )),
                            ),
                          )
                        ],
                      ),
                    )));
          },
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: kPrimaryColor,
                size: heading2(context).height,
              ),
              Text(
                "Ikeja, Lagos",
                style: bodyNormalText(context)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: kPrimaryColor,
                size: heading2(context).height,
              ),
            ],
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CustomerRoutes.customerSettingScreen);
          },
          child: Container(
            margin: EdgeInsets.only(left: kPad),
            padding: EdgeInsets.only(top: 8),
            child: CircleAvatar(
              backgroundImage: AssetImage(profileImg),
            ),
          ),
        ),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: AppTextField(
              prefixIcon: Icon(Icons.search),
              suffixIcon: GestureDetector(
                onTap: () => showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    context: context,
                    builder: (context) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                kMediumVerticalSpacing,
                                Text(
                                  "Sorted By",
                                  style: bodyNormalText(context),
                                ),
                                kSmallVerticalSpacing,
                                Text(
                                  "Location",
                                  style: bodyNormalText(context),
                                ),
                                kSmallVerticalSpacing,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: kPrimaryColor,
                                      size: 13,
                                    ),
                                    Text(
                                      "Ikeja, Lagos",
                                      style: bodyNormalText(context),
                                    ),
                                  ],
                                ),
                                kMediumVerticalSpacing,
                                Text(
                                  "Categories",
                                  style: bodyNormalText(context),
                                ),
                                GridView.builder(
                                    // controller: booksScrollController,
                                    shrinkWrap: true,
                                    keyboardDismissBehavior:
                                        ScrollViewKeyboardDismissBehavior
                                            .onDrag,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: const EdgeInsets.all(8),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 7 / 3,
                                      // mainAxisSpacing: 4,
                                      // crossAxisSpacing: 5,
                                    ),
                                    itemCount: 15,
                                    itemBuilder: (context, index) => FilterChip(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        selectedColor: Colors.orange,
                                        label: Text("Education"),
                                        onSelected: (bool? bo) {})),
                                kMediumVerticalSpacing,
                                Text(
                                  "Categories",
                                  style: bodyNormalText(context),
                                ),
                                GridView.builder(
                                    // controller: booksScrollController,
                                    shrinkWrap: true,
                                    keyboardDismissBehavior:
                                        ScrollViewKeyboardDismissBehavior
                                            .onDrag,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: const EdgeInsets.all(8),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 7 / 3,
                                      // mainAxisSpacing: 4,
                                      // crossAxisSpacing: 5,
                                    ),
                                    itemCount: 15,
                                    itemBuilder: (context, index) => FilterChip(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        selectedColor: Colors.orange,
                                        label: Text("Education"),
                                        onSelected: (bool? bo) {})),
                                Row(
                                  children: [
                                    Expanded(
                                        child: AppButton(
                                      label: "Apply",
                                      onPressed: () {},
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                child: Container(
                  color: kPrimaryColor,
                  child: Icon(
                    Icons.filter_list_rounded,
                    color: kWhiteColor,
                  ),
                ),
              ),
              label: "",
              hintText: "Search for a service",
            ),
          ),
          preferredSize: Size(
              double.infinity, MediaQuery.of(context).textScaleFactor * 60),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            kSmallVerticalSpacing,
            GestureDetector(
              onTap: () => showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 24, horizontal: 27),
                          constraints: BoxConstraints(maxHeight: 250),
                          child: Column(
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 30,
                              ),
                              kMediumVerticalSpacing,
                              Text(
                                "Disclaimer",
                                style: bodyNormalText(context)
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              kMediumVerticalSpacing,
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscin aaag elit. Vestibulum sollicitudin magna",
                                style: bodyNormalText(context),
                                textAlign: TextAlign.center,
                              ),
                              kLargeVerticalSpacing,
                              Row(
                                children: [
                                  Expanded(
                                    child: AppButton(
                                      color: kPrimaryColor,
                                      label: "Continue",
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                    Text(
                      "Skill4Cash Disclaimer",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Featured Service",
                      style: heading2(context).copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(CustomerRoutes.allServicesRoute),
                    child: Text(
                      "See all",
                      style: bodyNormalText(context)
                          .copyWith(color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            kSmallVerticalSpacing,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: GridView.builder(
                // controller: booksScrollController,
                shrinkWrap: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: const BouncingScrollPhysics(),
                // padding: const EdgeInsets.only(
                //     right: 24, top: 24, bottom: 24, left: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: MediaQuery.of(context).textScaleFactor < 1.6
                      ? 2 / 3
                      : 4 / 8,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 15,
                ),
                itemCount: servicePill.length,
                itemBuilder: (context, index) => ServicePill(
                    title: servicePill[index].title,
                    icon: servicePill[index].icon),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Service providers around me",
                      style: heading2(context).copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(
                        CustomerRoutes.serviceProvidersAroundScreenRoute),
                    child: Text(
                      "See all",
                      style: bodyNormalText(context)
                          .copyWith(color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).textScaleFactor < 1.6 ? 300 : 350,
              child: ListView.builder(
                // GestureDetector(
                //   onTap: () => Navigator.of(context).pushNamed(
                //       CustomerRoutes.serviceProvidersAroundScreenRoute),
                // ),
                itemCount: aroundMe.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => AroundMe(
                    image: aroundMe[index].image,
                    title: aroundMe[index].title,
                    subtitle: aroundMe[index].subtitle),
              ),
            ),

            // child: ListView.builder(
            //     itemCount: aroundMe.length,
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) => AroundMe(
            //         image: aroundMe[index].image,
            //         title: aroundMe[index].title,
            //         subtitle: aroundMe[index].subtitle)),
            // )
          ],
        ),
      ),
    );
  }

  Widget userLocation(
    BuildContext context, {
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: bodyNormalText(context)),
          Icon(
            Icons.arrow_forward_ios,
            color: kPrimaryColor,
            size: 13,
          ),
        ],
      ),
    );
  }
}

class AroundMe extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const AroundMe({
    Key? key,
    required,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,

      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhiteColor,
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEEEEEE),
            spreadRadius: 6,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      width: MediaQuery.of(context).textScaleFactor < 1.6 ? 150 : 200,
      // height: MediaQuery.of(context).textScaleFactor > 1.6 ? 200 : 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints.expand(
                width: double.infinity, height: 150),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Text(
                title,
                maxLines: 3,
                style: bodyNormalText(context)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              subtitle,
              style: bodyTinyText(context)
                  .copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 13,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 13,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 13,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 13,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 13,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  size: 13,
                  color: kPrimaryColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserLocation {
  final String location;
  final List<String> subLocation;
  const UserLocation({
    required this.location,
    required this.subLocation,
  });
}
