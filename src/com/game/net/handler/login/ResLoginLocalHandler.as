package com.game.net.handler.login {

import com.Mgr;
import com.game.net.message.login.ResLoginLocalMessage;
import com.net.MNetHandler;

public class ResLoginLocalHandler extends MNetHandler {

    // 登录(本地)
    override public function action(): void{
        var msg:ResLoginLocalMessage = ResLoginLocalMessage(this.message);
        // todo
    }
}
}