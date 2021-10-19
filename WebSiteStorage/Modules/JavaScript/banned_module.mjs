var Bans = {
    "189.114.246.165": "Banned_User"
}

var banned_page_name = "banned"

export function VerifyBanned(WebsiteParent) {
    $(function () {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function (json) {

                console.log(Bans[json.ip]);

                if (Bans[json.ip] == "Banned_User") {
                    window.location.href = WebsiteParent + "/" + banned_page_name;
                } else {
                    window.location.href = WebsiteParent;
                }
            }
        );
    });
}

export function Debug() {
    console.log("not working.")
}