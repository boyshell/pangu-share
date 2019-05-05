package com.game.net.handler.login {

import com.Mgr;
import com.game.net.message.login.ResLoginVersionCheckErrorMessage;
import com.net.MNetHandler;

public class ResLoginVersionCheckErrorHandler extends MNetHandler {

    // 版本验证
    override public function action(): void{
        var msg:ResLoginVersionCheckErrorMessage = ResLoginVersionCheckErrorMessage(this.message);
        // todo
    }
}
}