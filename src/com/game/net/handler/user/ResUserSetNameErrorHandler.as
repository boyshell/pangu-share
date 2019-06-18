package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserSetNameErrorMessage;
import com.net.MNetHandler;

public class ResUserSetNameErrorHandler extends MNetHandler {

    // 设置名字
    override public function action(): void{
        var msg:ResUserSetNameErrorMessage = ResUserSetNameErrorMessage(this.message);
        // todo
    }
}
}