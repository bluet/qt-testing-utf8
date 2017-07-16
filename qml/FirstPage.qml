import VPlayApps 1.0
import QtQuick 2.5
import QtQuick.Controls 2.1

Page {

	Text {
		id: apptext
		anchors.centerIn: parent
		text: qsTr("First Page")
	}

	Button {
		id: appButton
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: apptext.top
		anchors.bottomMargin: 0
		text: "拉拉拉"
	}

	Rectangle {
		id: containerBtn
		//anchors.top: currentSnapshot.bottom
		height: dp(60)
		radius: 5
		anchors.right: parent.right
		anchors.left: parent.left
		anchors.bottom: parent.bottom
		border.color: "blue"


		Button {
			id: btn_reload_pic
			text: "截圖.reload()"
			anchors.right: parent.horizontalCenter
		}

		Button {
			id: btnLock
			text: "芝麻開門（或關門）"
			anchors.left: parent.horizontalCenter
		}
	}

}
