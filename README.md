- When acesing the local images, one must create assets folder under the root of the project and update the pubsec.yaml file and put assets folder

![alt text](assets/image.png)

- when using the network cached image then again update the pubsec.yaml and run flutter pub get to get the latest dependency.

![alt text](assets/image-1.png)


- for persistent modal state use showBottomSheet 
- for temporary bottom sheet just use showModalBottomSheet


- use animated_text_kit package for animated texts. [text](https://pub.dev/packages/animated_text_kit)


- forms need formkey.

- in stack, the container placed before will have lower z-index

- positioned works like absolute positioning.

- XFile is a cross-platform abstraction designed to represent a file selected from various sources, such as the camera or gallery, across different platforms like Android, iOS, and the web

- image_picker package doesnt run on web. It needs android simulator.

- image_picker package adds the permissions needed automatically, but for geolocator package, we need to manually add that to android manifest and info.plist in ios.

- flutter_launcher_icons package for giving the native app logo

- flutter_native_splash package for splash screens/ welcoming screens to the app.

- the app logo must not contain any transparent things otherwise it will show error for ios while publishing, otherwise we have to add the remove_alpha_ios: true under flutter_icons.

- android under flutter_launch_icons needs to be true instead of "launcher_icon"

- app bundle id needs to be unique.

- rename package helps renaming the app and add unique bundle id for publishing to app store and play store.