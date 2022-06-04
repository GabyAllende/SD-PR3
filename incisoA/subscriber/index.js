var mqtt = require('mqtt')
var client = mqtt.connect('mqtt://' + process.env.brokerip + ':' + process.env.port)

function ConnectEvent() {
    client.subscribe(process.env.topic)
}

function MessageEvent(mytopic, message) {
    console.log(mytopic + " - " + message.toString())
}

client.on('connect', ConnectEvent)
client.on('message', MessageEvent)