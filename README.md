# Secure Keyboards - Flutter
In this Repository you will find a small Flutter app that shows how to retrieve the current keyboard identifier of an Android phone. This identifier can be used to allow/disallow specific keyboards. You may want to use this in a context, where privacy is of uttermost importance.

## Features
- **Get Keyboard Identifier**: Retrieve the current identifier
- **Validate Keyboard**: Check if the identifier is contained in a list of allowed keyboards

## Prerequisites
To run or build this app you need to have a working Flutter installation. You can follow the instructions under [docs.flutter.dev](https://docs.flutter.dev/get-started/install) to install Flutter on your machine. We recommend to use the latest stable version of Flutter.
This app was tested using Flutter 3.19.1.

## Installation
When you have a working Flutter installation, running this project will be easy.
1. Clone the repository
2. Open it in Android Studio (or your desired IDE)
3. Run (or build) the app

## Example
Using a Pixel 7 Pro Simulator you should see the following screen when running the app:
![Screenshot of the Keyboard Validation Screen](documentation/screenshots/secure_keyboards_flutter_pixel_7.png)

## Acknowledgements
The code of this project is used in the following article on Medium [Privacy Secure Android Keyboards](https://medium.com/@mobile_44538/privacy-secure-android-keyboards-b11b322ffa41). Please check out the article for more information on the topic of privacy in the context of Android keyboards.
An Android version can also be found under [GitHub: secure-keyboards-android](https://github.com/EXXETA/secure-keyboards-android)

## License
This project is licensed under the MIT License - read the [LICENSE](LICENSE) file for more details.
