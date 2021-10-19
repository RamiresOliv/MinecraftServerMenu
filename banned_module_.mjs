var Bans = {
    "189.114.246.165": "Banned_User"
}

export function VerifyBanned() {
    $(function () {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function (json) {

                console.log(Bans[json.ip]);

                if (Bans[json.ip] == "Banned_User") {
                    console.log("true")
                    return true
                } else {
                    console.log("false")
                    return false
                }
            }
        );
    });
}

export function VerifyNotBanned() {
    $(function () {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function (json) {

                console.log(Bans[json.ip]);

                if (Bans[json.ip] != "Banned_User") {
                    return false
                } else {
                    return true
                }
            }
        );
    });
}