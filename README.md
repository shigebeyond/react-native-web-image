# react-native-web-image

##What is it
react-native-web-image is a react native ui component used to render and cache web image, we use another ope-source project  [SDWebImage](https://github.com/rs/SDWebImage) to implement image cache.

##How to use it

1. `npm install react-native-web-image@latest --save`
2. In XCode, in the project navigator right click `Libraries` ➜ `Add Files to [your project's name]`
3. Go to `node_modules` ➜ `react-native-web-image` and add `ReactNativeWebImage.xcodeproj`
4. Add `libReactNativeWebImage.a` (from 'Products' under ReactNativeWebImage.xcodeproj) to your project's `Build Phases` ➜ `Link Binary With Libraries` phase
5. Edit `node_modules/react-native/Libraries/Image/Image.ios.js` and use our ui component
```javascript
// var RCTNetworkImage = requireNativeComponent('RCTNetworkImageView', null);
var RCTNetworkImage = requireNativeComponent('SKWebImageView', null);
```
6. Run your project (`Cmd+R`)
