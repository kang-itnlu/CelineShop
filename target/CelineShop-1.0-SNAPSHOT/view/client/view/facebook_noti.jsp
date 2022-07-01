<%--
  Created by IntelliJ IDEA.
  User: khang
  Date: 3/29/2022
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Messenger chat-->
<!-- FACEBOOK CHAT WIDGET-->
<!-- //banner -->
<!--facebook live-->
<meta property="fb:app_id" content="707516127168532" />
<meta property="fb:admins" content="100005868942037" />
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0&appId=707516127168532&autoLogAppEvents=1" nonce="EknEoy7g"></script>
<div class="fb-livechat"> <div class="ctrlq fb-overlay"></div><div class="fb-widget"> <div class="ctrlq fb-close"></div>
    <div class="fb-page" data-href="https://www.facebook.com/C%C3%A9line-115143804533811" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false">
    </div><div class="fb-credit"> <a href="https://chanhtuoi.com" target="_blank">Powered by Chanhtuoi</a> </div><div id="fb-root"></div></div>
    <a href="https://www.facebook.com/C%C3%A9line-115143804533811" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button"> <div class="bubble">1</div>
        </a></div>
<div class="noti-recieve">
    <div class="ctrlf noti-overlay"></div>
    <div class="noti-widget">
        <div class="noti-page" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true"
             data-show-facepile="false">
            Hãy để lại email của bạn, chúng tôi sẽ thông báo tới bạn khi có chương trình khuyến mãi <i
                class="fas fa-percent" style="color:orange"></i>
            <form action="${pageContext.request.contextPath}/recieveNoti" method="post">
                <label>Email</label>
                <input type="email" name="email__for-noti" placeholder="Hãy nhập email của bạn"
                       style="padding: 3px 6px">
                <input type="submit" value="Gửi"
                       style="padding:4px 12px;background:#efac92;border:none;border-radius:4px;">
            </form>
        </div>
    </div>
    <a href="#" title="Give us your emaill to recieve notifications about discount" class="ctrlf noti-button"><i
            class="far fa-bell" style="font-size: 32px;margin-top:12px;color:orange;"></i></a>
</div>
<script>
    $(document).ready(function () {
        let t = {delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")};
        setTimeout(function () {
            $('div.fb-livechat').fadeIn()
        }, 8 * t.delay), $(".ctrlq").on("click", function (e) {
            e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({
                bottom: 0,
                opacity: 0
            }, 2 * t.delay, function () {
                $(this).hide("slow"), t.button.show()
            })) : t.button.fadeOut("medium", function () {
                t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)
            })
        })
    });


    $(document).ready(function () {
        var f = {delay: 125, overlay: $(".noti-overlay"), widget: $(".noti-widget"), button: $(".noti-button")};
        setTimeout(function () {
            $("div.noti-recieve").fadeIn()
        }, 8 * f.delay), $(".ctrlf").on("click", function (e) {
            e.preventDefault(), f.overlay.is(":visible") ? (f.overlay.fadeOut(f.delay), f.widget.stop().animate({
                bottom: 0,
                opacity: 0
            }, 2 * f.delay, function () {
                $(this).hide("slow"), f.button.show()
            })) : f.button.fadeOut("medium", function () {
                f.widget.stop().show().animate({bottom: "160px", opacity: 1}, 2 * f.delay), f.overlay.fadeIn(f.delay)
            })
        })
    });
</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>

