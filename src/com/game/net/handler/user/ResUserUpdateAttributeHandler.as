package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserUpdateAttributeMessage;
import com.net.MNetHandler;

public class ResUserUpdateAttributeHandler extends MNetHandler {

    // 更新属性
    override public function action(): void{
        var msg:ResUserUpdateAttributeMessage = ResUserUpdateAttributeMessage(this.message);
        // todo
    }
}
}