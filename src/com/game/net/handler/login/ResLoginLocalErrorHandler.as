package com.game.net.handler.login {

import com.Mgr;
import com.game.net.message.login.ResLoginLocalErrorMessage;
import com.net.MNetHandler;

public class ResLoginLocalErrorHandler extends MNetHandler {

    // 登录(本地)
    override public function action(): void{
        var msg:ResLoginLocalErrorMessage = ResLoginLocalErrorMessage(this.message);
        // todo
    }
}
}