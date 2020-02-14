import QtQuick 2.0

Canvas {
    id: root
    property var lines: []

    MouseArea {
        id: mouseArea
    }

    // color: color, width: float, points: list
    function addLine(aColor, aWidth, aPoints){
        var context = root.getContext('2d')
        lines.push({color: aColor, width: aWidth, points: aPoints})
        /*
            Push new line.
            Задать цвет линии с помощью strokeStyle.
            Задать ширину линии с помощью lineWidth.
            Начать новый путь с помощью beginPath.
            Переместиться к начальной точке с помощью moveTo.
            Для каждой новой точке нарисовать линию с помощью lineTo.
            Закрасить путь с помощью stroke.
        */
        context.lineWidth = aWidth
        context.strokeStyle = aColor
        context.beginPath()
        context.moveTo(lines[lines.length - 1].points[0][0], lines[lines.length - 1].points[0][1])
        for(i = 1; i<lines[lines.length - 1].points.length; i++){
            context.lineTo(lines[lines.length - 1].points[i][0],
                           lines[lines.length - 1].points[i][1])}
        context.stroke()
    }

    // if rColor is item.color -> remove item
    function removeLine(rColor){
        lines = lines.filter((line)=>{return line.color === rColor})}
}
