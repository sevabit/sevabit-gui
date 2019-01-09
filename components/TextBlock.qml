import QtQuick 2.0

import "../components" as SevabitComponents

TextEdit {
    color: SevabitComponents.Style.defaultFontColor
    font.family: SevabitComponents.Style.fontRegular.name
    selectionColor: SevabitComponents.Style.dimmedFontColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
