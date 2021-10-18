define(function () {
    return function () {
        var input_token = document.getElementById("input_token");
        var input_message = document.getElementById("input_message");
        var WarnMessage = document.getElementById("WarnMessage");

        WarnMessage.innerHTML = "";

        const hook = new Webhook(input_token.value).then(() => {

            hook.send(input_message.value).then(() => {
                WarnMessage.innerHTML = "Success! Webhook sended.";
            }).catch(err => {
                WarnMessage.innerHTML = "error in try get message pls verify the message for send the webhook.";
            });

        }).catch(err => {
            WarnMessage.innerHTML = "error in try use Webhook verify the Token and try again.";
        })
    }
})