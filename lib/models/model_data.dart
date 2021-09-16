import 'package:insta_app/models/coversation_model.dart';
import 'package:insta_app/models/home_page_model.dart';
import 'package:insta_app/models/profile_model.dart';

class Data {
  static List<HomePageModel> getFeeds() {
    List<HomePageModel> list = [
      HomePageModel(
          id: 1,
          name: "Kitty",
          mainImage:
              "https://cdn.vox-cdn.com/thumbor/NPeMYdtUnPBYQxCK0UMwUXmB6-k=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20006673/ezgif_6_f3769a459f91.jpg",
          profileImage:
              'http://images.assetsdelivery.com/compings_v2/vadymvdrobot/vadymvdrobot1903/vadymvdrobot190306372.jpg',
          postTime: "33m ago"),
      HomePageModel(
          id: 2,
          name: "Roy",
          mainImage:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHwpaY8dZs1g0kMBjcv4TfXcQBWFgWWMZSwtQ8aHN_LEU7ViHWcEUpa7a0CP08rjZ4yHs&usqp=CAU",
          profileImage:
              'https://image.shutterstock.com/image-photo/africanamerican-teenage-boy-on-color-260nw-1389793760.jpg',
          postTime: "5h ago"),
      HomePageModel(
          id: 3,
          name: "anela",
          mainImage:
              "https://images.unsplash.com/photo-1500076656116-558758c991c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y291bnRyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
          profileImage:
              'https://as1.ftcdn.net/jpg/03/32/83/42/500_F_332834224_sTHd432RPfn0rO77leOeUNkoC9KJK8P2.jpg',
          postTime: "1m ago"),
      HomePageModel(
          id: 4,
          name: "Sophia",
          mainImage:
              "https://live.staticflickr.com/4811/44876050135_3a7e7fdc5b_b.jpg",
          profileImage:
              'https://image.shutterstock.com/image-photo/beauty-women-portrait-studio-isolated-260nw-745083361.jpg',
          postTime: "21h ago"),
      HomePageModel(
          id: 5,
          name: "Layla",
          mainImage:
              "https://cdn.britannica.com/16/191216-050-32E4BF3C/Tulips-sculpture-group-colour-coating-stainless-steel-2004.jpg",
          profileImage:
              'https://image.freepik.com/free-photo/close-up-excited-woman-hiding_23-2148487231.jpg',
          postTime: "5m, ago"),
      HomePageModel(
          id: 6,
          name: "Aria",
          mainImage: "https://images2.alphacoders.com/539/thumb-1920-53920.jpg",
          profileImage:
              'https://image.freepik.com/free-photo/portrait-happy-ginger-red-hair-girl-with-freckles-smiling-looking-camera-pastel-blue-background-copy-space_1258-775.jpg',
          postTime: "9m, ago"),
      HomePageModel(
          id: 7,
          name: "Emily",
          mainImage: "https://wallpaperaccess.com/full/2256612.jpg",
          profileImage:
              'https://image.shutterstock.com/image-photo/beautiful-young-woman-red-mini-260nw-1034446087.jpg',
          postTime: "24h, ago"),
      HomePageModel(
          id: 8,
          name: "Amelia",
          mainImage:
              "https://c4.wallpaperflare.com/wallpaper/378/135/652/flowers-tree-guitar-hd-wallpaper-preview.jpg",
          profileImage:
              'https://www.crushpixel.com/big-static18/preview4/attractive-young-woman-glasses-blue-3130097.jpg',
          postTime: "27sec, ago"),
      HomePageModel(
          id: 9,
          name: "Charlotte",
          mainImage:
              "https://i.pinimg.com/originals/be/df/6c/bedf6cff125ecc4f134e31a0e6ed1dcf.jpg",
          profileImage:
              'https://www.laradmusic.com/wp-content/uploads/2018/03/gallery-03.jpg',
          postTime: "2h, ago"),
      HomePageModel(
          id: 10,
          name: "Isabella",
          mainImage:
              "https://dvyvvujm9h0uq.cloudfront.net/com/articles/1559139466-modelposes.jpg",
          profileImage:
              'https://image.freepik.com/free-photo/young-woman-dancing-sky-background_23-2148170302.jpg',
          postTime: "9h, ago"),
      HomePageModel(
          id: 11,
          name: "Emma",
          mainImage:
              "https://expertphotography.com/wp-content/uploads/2018/10/cool-profile-pictures-retouching-1.jpg",
          profileImage:
              'https://static3.bigstockphoto.com/6/5/3/large1500/356108528.jpg',
          postTime: "1day, ago"),
      HomePageModel(
          id: 12,
          name: "Olivia",
          mainImage:
              "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
          profileImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLICzOVIF3nJpuNwIYJsFdcic8K6iMbllJw&usqp=CAU',
          postTime: "2days, ago"),
      HomePageModel(
          id: 13,
          name: "Mia",
          mainImage:
              "https://images.unsplash.com/photo-1596815797805-784758c6343e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2t5JTIwZ2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
          profileImage:
              'https://image.freepik.com/free-photo/close-up-excited-woman-hiding_23-2148487231.jpg',
          postTime: "1week, ago"),
      HomePageModel(
          id: 14,
          name: "Ava",
          mainImage:
              "https://thumbs.dreamstime.com/z/woman-sitting-wooden-bench-park-blue-sky-background-happy-asian-woman-sitting-wooden-bench-park-121500456.jpg",
          profileImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR46CoIa21ueF2By0lWjzIcIS63Enz3DH7qXQ&usqp=CAU',
          postTime: "1week, ago"),
    ];
    return list;
  }

  static List<ConversationModel> conversationList() {
    List<ConversationModel> list = [];
    list = [
      ConversationModel(
        id: 1,
        name: "Ava",
        lastText: "Hello",
        profileImg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR46CoIa21ueF2By0lWjzIcIS63Enz3DH7qXQ&usqp=CAU",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 2,
        name: "Mia",
        lastText: "How are you",
        profileImg:
            "https://image.freepik.com/free-photo/close-up-excited-woman-hiding_23-2148487231.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 3,
        name: "Olivia",
        lastText: "come to my home",
        profileImg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmvp_BeU95YSTGJ-GSmwd9cd-MUDdgVuerrQ&usqp=CAU",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 4,
        name: "Emma",
        lastText: "today i am not comming",
        profileImg:
            "https://image.shutterstock.com/image-photo/beauty-women-portrait-studio-isolated-260nw-745083361.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Isabella",
        lastText: "Yes",
        profileImg:
            "https://image.freepik.com/free-photo/portrait-happy-ginger-red-hair-girl-with-freckles-smiling-looking-camera-pastel-blue-background-copy-space_1258-775.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Charlotte",
        lastText: "today i go to out side",
        profileImg:
            "https://www.laradmusic.com/wp-content/uploads/2018/03/gallery-03.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Amelia",
        lastText: "Hii",
        profileImg:
            "https://motionarray.imgix.net/preview-103223-pxsmL6gYt6-high_0004.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Aria",
        lastText: " I am fine",
        profileImg:
            "https://image.shutterstock.com/image-photo/africanamerican-teenage-boy-on-color-260nw-1389793760.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Nora",
        lastText: "hi ",
        profileImg: "https://c.stocksy.com/a/kfb300/z9/859800.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Riley",
        lastText: "come to my house",
        profileImg:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJSLfOLy0CnFJAbY4m1-aA9ulMT5JSEekOQ2Ce43wJBkZzdpR_nab31d7HAFBsUSLUpro&usqp=CAU",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Kitty",
        lastText: "let's go for a walk",
        profileImg:
            "https://image.shutterstock.com/image-photo/full-size-photo-young-happy-260nw-1922724455.jpg",
        postTime: "5m ago",
      ),
      ConversationModel(
        id: 1,
        name: "Roy",
        lastText: "let's go",
        profileImg:
            "http://images.assetsdelivery.com/compings_v2/vadymvdrobot/vadymvdrobot1903/vadymvdrobot190306372.jpg",
        postTime: "5m ago",
      ),
    ];
    return list;
  }

  static List<ProfileModel> moreFeeds() {
    List<ProfileModel> list = [];
    list = [
      ProfileModel(
        id: 1,
        newImage:
            "https://i.pinimg.com/736x/8b/c8/d1/8bc8d1de30a6bec435884122dcdf3480.jpg",
      ),
      ProfileModel(
        id: 2,
        newImage:
            "https://i.pinimg.com/736x/40/37/b2/4037b26546e3c6b06f515c1bd3872f91.jpg",
      ),
      ProfileModel(
        id: 3,
        newImage:
            "https://i.pinimg.com/564x/51/7b/07/517b07bfac2232980597368f36fc06c5.jpg",
      ),
      ProfileModel(
        id: 4,
        newImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToOOSN67If9_9kJ71cpQyA2fEwSnR_n6Cl6tkSRBLM_sujsPSDTV68cuv33FHjrUSeX_w&usqp=CAU",
      ),
      ProfileModel(
        id: 5,
        newImage:
            "https://c4.wallpaperflare.com/wallpaper/764/505/66/baby-groot-4k-hd-superheroes-wallpaper-preview.jpg",
      ),
      ProfileModel(
        id: 6,
        newImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa0eWJGbViNfI4GXePGhs0s7wULwV7BxhW_Q&usqp=CAU",
      ),
      ProfileModel(
        id: 7,
        newImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM8mMkr1lRY5ryWi-Zzb2lRYnCx1IErVkDKg&usqp=CAU",
      ),
      ProfileModel(
        id: 8,
        newImage: "https://wallpapercave.com/wp/wp3751151.jpg",
      ),
      ProfileModel(
        id: 9,
        newImage:
            "https://i.pinimg.com/236x/f1/ae/e5/f1aee5a6b8f87160606d743a0aaf5cbf.jpg",
      ),
      ProfileModel(
        id: 10,
        newImage:
            "https://i.pinimg.com/474x/a7/d5/cb/a7d5cb66692fc77ffa0f9281660eba7b.jpg",
      ),
      ProfileModel(
        id: 11,
        newImage: "https://wallpaperaccess.com/full/1109636.jpg",
      ),
    ];
    return list;
  }


}
