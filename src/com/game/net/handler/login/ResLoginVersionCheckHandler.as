package com.game.net.handler.login {

import com.Mgr;
import com.game.net.message.login.ResLoginVersionCheckMessage;
import com.net.MNetHandler;

public class ResLoginVersionCheckHandler extends MNetHandler {

    // 版本验证
    override public function action(): void{
        var msg:ResLoginVersionCheckMessage = ResLoginVersionCheckMessage(this.message);
        // todo
    }
}
}