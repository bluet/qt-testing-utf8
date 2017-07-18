import VPlayApps 1.0
import QtQuick 2.5

App {
	// You get free licenseKeys from https://v-play.net/licenseKey
	// With a licenseKey you can:
	//  * Publish your games & apps for the app stores
	//  * Remove the V-Play Splash Screen or set a custom one (available with the Pro Licenses)
	//  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
	//licenseKey: "<generate one from https://v-play.net/licenseKey>"

	// workaround from https://v-play.net/developers/forums/t/qml-button-text-cannot-display-utf-8-chinese-only-show-empty-spaces#post-16697
	Loader {
		id: loader
		sourceComponent: navigationComponent
		asynchronous: true
		anchors.fill: parent
		visible: false

		// after loading is finished, add the item to the main app content item
		onLoaded: loader.item.parent = app.contentItem
	}

	Component {
		id: navigationComponent
		Navigation {

			// Comment to use a navigation drawer instead of tabs on Android
			navigationMode: navigationModeTabs

			NavigationItem {
				title: qsTr("First Page")
				icon: IconType.square

				FirstPage {}
			}

			NavigationItem {
				title: qsTr("Second Page")
				icon: IconType.circle

				SecondPage {}
			}

		}
	}
}
