<script>
    import { VerifyBanned, VerifyNotBanned } from './banned_module.mjs';

    let verifyBannedValue = VerifyBanned()
    if (verifyBannedValue == true) {
        console.log(verifyBannedValue)
        // window.location.href = "banned"
    }
</script>
