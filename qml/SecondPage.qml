import VPlayApps 1.0
import QtQuick 2.5
import QtQuick.Controls 2.1

Page {

	AppText {
		id: apptext2
		anchors.centerIn: parent
		text: qsTr("Second Page")
	}

	Button {
		id: appButton2
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: apptext2.top
		anchors.bottomMargin: 0
		text: "拉拉拉"
	}

	Rectangle {
		id: containerBtn2
		//anchors.top: currentSnapshot.bottom
		height: dp(60)
		radius: 5
		anchors.right: parent.right
		anchors.left: parent.left
		anchors.bottom: parent.bottom
		border.color: "blue"


		Button {
			id: btn_reload_pic2
			text: "截圖.reload()"
			anchors.right: parent.horizontalCenter
		}

		Button {
			id: btnLock2
			text: "芝麻開門（或關門）"
			anchors.left: parent.horizontalCenter
		}
	}
}
