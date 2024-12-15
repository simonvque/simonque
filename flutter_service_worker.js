'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "1aa28b9481c011485b7bf610d8279f17",
"assets/AssetManifest.bin.json": "ffb79d6f69af6f4c09a96800fb9f0712",
"assets/AssetManifest.json": "2ae265fe22e7502d801e8a1f87268286",
"assets/assets/fonts/Doctor%2520Soos%2520Light%25201.1.ttf": "8593274c46a82ae2cfad43d35bdbda1f",
"assets/assets/fonts/Sprite%2520Graffiti.otf": "a1e3ab3a706e932d3e2e50b3744ecb3d",
"assets/assets/images/3.png": "f276491bbf0d854300cd42f29edfa836",
"assets/assets/images/4.png": "de6038647ad1085e3fdbd794883c1b52",
"assets/assets/images/college1.png": "3723407a2b944dabc30133f8c0543ca3",
"assets/assets/images/college10.png": "69e9154805aec997f845ea5f9d606a6f",
"assets/assets/images/college11.png": "daa9d2b433ad9b188b6bcaed4f384e33",
"assets/assets/images/college12.png": "2e6ef6216ea95549b5914983c5906a36",
"assets/assets/images/college2.png": "a11535e21d1c2af139673bbbe812aa8e",
"assets/assets/images/college3.png": "75d01b7d31c955f2dcbf55b8a2a6b81d",
"assets/assets/images/college4.png": "b1826a1a84c100dcd761d4a9fd7dc277",
"assets/assets/images/college5.png": "02e7dc2f7b2431dee79ead8c9da43f9f",
"assets/assets/images/college6.png": "4ebb226b678802e6eed1ea5379b8bde7",
"assets/assets/images/college7.png": "fbf95edbf9b9e4c225e10d050d495d19",
"assets/assets/images/college8.png": "b541ee064cf60003ec6d0ca04cc00bf7",
"assets/assets/images/college9.png": "e5e4f10876406cc225302d7b50322480",
"assets/assets/images/contact_icon.png": "856b95eb03d60fa2576140e4c3d034b9",
"assets/assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/assets/images/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/assets/images/github.png": "bbf68ee887f684b0a8bffe922bfc51ee",
"assets/assets/images/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/assets/images/Hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/assets/images/instagram.png": "8c564b1d146e7412d6eb2c40783523f0",
"assets/assets/images/internship1.png": "9716745d4c476c858722daf0e8a90a16",
"assets/assets/images/internship10.png": "0af46cccb037d966424819c15a74a192",
"assets/assets/images/internship11.png": "6abe0cce012465d200af85cb0d67e25e",
"assets/assets/images/internship12.png": "c5c73724ff2dbbc8dd2c4221172f91b6",
"assets/assets/images/internship2.png": "42825e0d286e406b45190b38dfc6b705",
"assets/assets/images/internship3.png": "5d07d47a83546359c59562214709016d",
"assets/assets/images/internship4.png": "d704f6101a393e470c01a7ea07abbee8",
"assets/assets/images/internship5.png": "026484d899f299d49ec8c9ae6029edea",
"assets/assets/images/internship6.png": "8650a0ad24ee951677dfb3397a624fac",
"assets/assets/images/internship7.png": "0d4d8b1689ad38d3c030ffcd907518ca",
"assets/assets/images/internship8.png": "4ffce45e84e59485e12aa6b8329ced09",
"assets/assets/images/internship9.png": "36a2245f3700d5545ce01a099e22d234",
"assets/assets/images/learning1.png": "50230bc4849afc58ef0d52ebda0322df",
"assets/assets/images/learning10.png": "7f10a36b8e9bbab81f2b160a1aac98da",
"assets/assets/images/learning11.png": "3ff566d0faf3d514b06db2cead885ec2",
"assets/assets/images/learning12.png": "075bbd26d72bb26a60d9a9ecc3f341db",
"assets/assets/images/learning2.png": "1527341187791612e3db271886e6df53",
"assets/assets/images/learning3.png": "0ec35f9e45dd86271dc11cfe355fd026",
"assets/assets/images/learning4.png": "8db5dfe6adbb8f78f640bcac2c3730f0",
"assets/assets/images/learning5.png": "f8e97c6f0f05373f5aaa9adb20d7344a",
"assets/assets/images/learning6.png": "57f0a0bdc38146ce268656046876cc11",
"assets/assets/images/learning7.png": "c97d01680c1873a316cca2152436823c",
"assets/assets/images/learning8.png": "e2ea58c42a5da8fa2100b060ed972369",
"assets/assets/images/learning9.png": "e8c4472552dabd77574a1174c7eac344",
"assets/assets/images/linkedin.png": "e0264ddc843b3a6d8347cf78a6503c1d",
"assets/assets/images/regain1.png": "4ee49060452f8a09f368667964707787",
"assets/assets/images/regain10.png": "53cf43cb875fc1270503278d0e88d610",
"assets/assets/images/regain11.png": "8c531b4a0808b9ba32bff9fa14c8dad1",
"assets/assets/images/regain12.png": "5c66718a19a76a2913a51750060347b4",
"assets/assets/images/regain2.png": "0cabf3fb7b751cd8b2751e89d06be3b6",
"assets/assets/images/regain3.png": "bd079fb3b1f6645c71b2e59d4b2fae86",
"assets/assets/images/regain4.png": "712b0f1c781b8136dcc83a818cf29b97",
"assets/assets/images/regain5.png": "b41bb2c388afc096eb293c83d7c52942",
"assets/assets/images/regain6.png": "9b54f8d558bb55014a77b317613a6459",
"assets/assets/images/regain7.png": "9711d2c759a98efa173698f0bb3a02d0",
"assets/assets/images/regain8.png": "a0280a585a199d8b8513a6ce88a5fb0c",
"assets/assets/images/regain9.png": "f6af4adbf8793a67e1e7882e848fb720",
"assets/assets/images/sign.png": "77fea7800240709b6557b0a06abd10ca",
"assets/assets/images/sign2.png": "4208fe98924b248eb9c3135ba7115346",
"assets/assets/images/sign3.png": "728a8f951b3775f5ed103fc6a594c20b",
"assets/assets/images/skill1.png": "c8c2c53b48d2712a88c1b56d749267e9",
"assets/assets/images/skill2.png": "d86ab3865ec8866b90305efa8fa7ba8c",
"assets/assets/images/skill3.png": "10a924cbbd9257392923e2a71a7cd91a",
"assets/assets/images/skill4.png": "792e1b7ffe9d3b7b0df7c7c2d56a4fab",
"assets/assets/images/sq.png": "f54453fbc1f9c9aef2f43e9e7084af5b",
"assets/assets/images/sq2.png": "41b31040f0bb9bb63a613599a54911c8",
"assets/assets/images/sq3.png": "440a8af8cb5ba17eaec6949a8091163c",
"assets/assets/images/topimage.png": "d129177d6cc9585fee580509cfe3d9db",
"assets/assets/images/work1.png": "4db18710160ae3399e214db128521b53",
"assets/assets/images/work2.png": "5f24126d1618c194ef2d1a1725a2df80",
"assets/assets/images/work3.png": "28214547c6b8db332ba47e112e1f93ee",
"assets/assets/images/work4.png": "f4e749588bb39df12caad88a0fb3818d",
"assets/FontManifest.json": "d2ed7c8010ab6508a05fddc892fa9854",
"assets/fonts/MaterialIcons-Regular.otf": "c6ecb20aa4f2fd045c230fefe26df958",
"assets/NOTICES": "03ee58ef44783a951956e83df8cc0e6d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "9419a943497b78a9dded81694ddcabd4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "512ce3e522fddebcd69367fbd9232c56",
"/": "512ce3e522fddebcd69367fbd9232c56",
"main.dart.js": "557e6486d46ab0c29856c878b8c866af",
"manifest.json": "c937affd2cdd9ad4cbb85a54b2f1cb50",
"version.json": "b6fdc639e2b230ffc205be445cb71b01"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
