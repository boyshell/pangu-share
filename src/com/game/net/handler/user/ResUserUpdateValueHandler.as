package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserUpdateValueMessage;
import com.net.MNetHandler;

public class ResUserUpdateValueHandler extends MNetHandler {

    // 更新值
    override public function action(): void{
        var msg:ResUserUpdateValueMessage = ResUserUpdateValueMessage(this.message);
        // todo
    }
}
}