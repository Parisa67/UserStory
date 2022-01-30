import 'package:get/get.dart';
import 'package:userstory/view_model/friend_view_model.dart';
import 'package:userstory/view_model/person_view_model.dart';

class AppDatabase {
  // RxList<PersonViewModel> users = <PersonViewModel>[].obs;

  static RxList<PersonViewModel> get user {
    return [
      PersonViewModel(
          guid: "1791c941-9939-4970-be9a-09739587d69b",
          isOwner: true,
          balance: "1,835.03",
          picture: "http://placehold.it/32x32",
          age: 33,
          eyeColor: "green",
          name: "parisa m",
          // name: "Koch Hartman",
          gender: "male",
          company: "BISBA",
          email: "pari@m.com",
          // email: "kochhartman@bisba.com",
          phone: "+1 (923) 566-2621",
          address: "755 Vermont Court, Rote, Indiana, 1362",
          about:
              "Voluptate magna est elit esse aliqua minim aliqua veniam elit reprehenderit. Veniam anim ex ea proident. Proident in dolor et proident elit elit anim. Culpa sit ea consectetur proident tempor mollit. Fugiat cillum ut officia enim in excepteur incididunt incididunt duis. Voluptate proident sit exercitation et qui. Laboris voluptate fugiat in excepteur mollit velit occaecat duis cupidatat adipisicing excepteur Lorem do Lorem.\r\n",
          registered: "2016-06-14T12:33:12 -05:-30",
          latitude: -54.190089,
          longitude: -31.352961,
          tags: ["non", "anim", "ullamco", "Lorem", "consectetur", "ad", "qui"],
          friends: [
            FriendViewModel(
                id: 0,
                guid: "97241d36-53a1-4795-8869-d998a6582892",
                name: "Wood Pitts"),
            FriendViewModel(
                id: 1,
                guid: "aa57a24e-eb7b-421c-9b14-581208434af3",
                name: "Gretchen Moore"),
            FriendViewModel(
                id: 2,
                guid: "a9998045-280b-497d-8a3f-91c3a2b41a0b",
                name: "Guerra Banks"),
          ],
          greeting: "Hello, Koch Hartman! You have 4 unread messages.",
          favoriteFruit: "banana"),
      PersonViewModel(
          guid: "97241d36-53a1-4795-8869-d998a6582892",
          isOwner: false,
          balance: "3,098.20",
          picture: "http://placehold.it/32x32",
          age: 23,
          eyeColor: "green",
          name: "Wood Pitts",
          gender: "male",
          company: "DARWINIUM",
          email: "woodpitts@darwinium.com",
          phone: "+1 (915) 473-2926",
          address: "787 Veronica Place, Wauhillau, Alaska, 6535",
          about:
              "Excepteur adipisicing reprehenderit ea sint excepteur culpa amet elit officia aliqua incididunt dolore. Ullamco ea ipsum quis consequat ea. Adipisicing eu laborum eiusmod voluptate anim tempor labore incididunt.\r\n",
          registered: "2015-10-04T06:18:41 -04:-30",
          latitude: 2.02018,
          longitude: 125.589369,
          tags: ["occaecat", "exercitation", "anim"],
          friends: [
            FriendViewModel(
                id: 0,
                guid: "9998045-280b-497d-8a3f-91c3a2b41a0b",
                name: "Guerra Banks"),
            FriendViewModel(
                id: 1,
                guid: "775d4916-18cf-48f5-b569-4929aafb5f95",
                name: "Edith Hughes"),
          ],
          greeting: "Hello, Wood Pitts! You have 10 unread messages.",
          favoriteFruit: "apple"),
      PersonViewModel(
          guid: "aa57a24e-eb7b-421c-9b14-581208434af3",
          isOwner: false,
          balance: "1,026.04",
          picture: "http://placehold.it/32x32",
          age: 36,
          eyeColor: "brown",
          name: "Gretchen Moore",
          gender: "female",
          company: "TERRAGO",
          email: "gretchenmoore@terrago.com",
          phone: "+1 (834) 557-3096",
          address: "205 Story Street, Eggertsville, Illinois, 9484",
          about:
              "Aliqua consequat laboris veniam elit proident. Laborum duis occaecat laboris amet dolore nulla amet laborum nisi aliqua mollit in anim. Culpa culpa culpa commodo duis. Ex magna est officia laborum voluptate qui.\r\n",
          registered: "2017-03-29T12:09:39 -05:-30",
          latitude: -7.74747,
          longitude: -144.50489,
          tags: [
            "nostrud",
            "pariatur",
            "qui",
            "consectetur",
            "eiusmod",
            "aute",
            "ea"
          ],
          friends: [
            FriendViewModel(
                id: 0,
                guid: "571e63a8-5dc2-4caa-b38f-1471b83ecdc8",
                name: "Powell Edwards"),
            FriendViewModel(
                id: 1,
                guid: "a389d416-8054-4a99-b74f-f2627ac4b9b4",
                name: "Gray Watkins"),
            FriendViewModel(
                id: 2,
                guid: "3878e85b-d7b6-4e08-9f7b-0d8ebe18f8fb",
                name: "Alana Mcmahon"),
          ],
          greeting: "Hello, Gretchen Moore! You have 10 unread messages.",
          favoriteFruit: "apple"),
      PersonViewModel(
          guid: "a9998045-280b-497d-8a3f-91c3a2b41a0b",
          isOwner: false,
          balance: "3,123.44",
          picture: "http://placehold.it/32x32",
          age: 30,
          eyeColor: "blue",
          name: "Guerra Banks",
          gender: "male",
          company: "ZINCA",
          email: "guerrabanks@zinca.com",
          phone: "+1 (994) 525-3984",
          address: "804 Eckford Street, Sidman, Virgin Islands, 9323",
          about:
              "Eu esse consequat mollit ipsum sint eiusmod amet duis. Lorem pariatur mollit deserunt eiusmod irure fugiat officia fugiat eiusmod est ea. Elit culpa excepteur duis minim nisi velit ut id ullamco mollit consequat.\r\n",
          registered: "2021-07-13T07:47:28 -05:-30",
          latitude: -73.453501,
          longitude: 158.075799,
          tags: [
            "ullamco",
            "mollit",
            "veniam",
            "ut",
            "ullamco",
            "cupidatat",
            "minim"
          ],
          friends: [
            FriendViewModel(
                id: 0,
                guid: "4ec3b656-4f14-4573-b238-8b24830c32b9",
                name: "Benson Oneal")
          ],
          greeting: "Hello, Guerra Banks! You have 3 unread messages.",
          favoriteFruit: "strawberry"),
      PersonViewModel(
          guid: "775d4916-18cf-48f5-b569-4929aafb5f95",
          isOwner: false,
          balance: "2,204.86",
          picture: "http://placehold.it/32x32",
          age: 24,
          eyeColor: "blue",
          name: "Edith Hughes",
          gender: "female",
          company: "FUELTON",
          email: "edithhughes@fuelton.com",
          phone: "+1 (923) 486-3613",
          address: "238 Kings Hwy, Kipp, Guam, 1835",
          about:
              "Irure ea dolore eu aliquip ut in cillum. Consequat nostrud aliqua tempor do consequat eiusmod Lorem mollit non. Voluptate elit pariatur et consequat adipisicing. Cupidatat irure est exercitation laborum id nulla fugiat sint enim eu elit in dolore. Id cillum occaecat ut aliquip ex voluptate laborum non cillum commodo adipisicing ut.\r\n",
          registered: "2016-07-01T11:23:14 -05:-30",
          latitude: -78.478891,
          longitude: 177.067451,
          tags: ["non", "pariatur", "ex", "ad", "tempor", "amet", "consequat"],
          friends: [],
          greeting: "Hello, Edith Hughes! You have 7 unread messages.",
          favoriteFruit: "strawberry"),
      PersonViewModel(
          guid: "d288504d-548a-42fa-9468-985b96492faa",
          isOwner: false,
          balance: "3,871.34",
          picture: "http://placehold.it/32x32",
          age: 28,
          eyeColor: "green",
          name: "Tracie Cervantes",
          gender: "female",
          company: "FARMAGE",
          email: "traciecervantes@farmage.com",
          phone: "+1 (937) 552-2190",
          address: "295 Ovington Court, Winesburg, Maryland, 1814",
          about:
              "Elit dolore fugiat aliqua qui enim laboris quis id. Officia et ullamco amet ut. Exercitation pariatur quis sit dolor anim cillum ex magna cupidatat. Quis ipsum anim ut consectetur dolor amet sint commodo deserunt consectetur reprehenderit Lorem ex pariatur. Sit sint nulla amet fugiat deserunt.\r\n",
          registered: "2017-08-12T02:19:33 -05:-30",
          latitude: -6.294132,
          longitude: -47.688632,
          tags: [
            "reprehenderit",
            "exercitation",
            "pariatur",
            "laboris",
            "fugiat",
            "excepteur",
            "qui"
          ],
          friends: [],
          greeting: "Hello, Tracie Cervantes! You have 3 unread messages.",
          favoriteFruit: "strawberry")
    ].obs;
  }
}
