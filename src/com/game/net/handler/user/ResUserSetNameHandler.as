package com.game.net.handler.user {

import com.Mgr;
import com.game.net.message.user.ResUserSetNameMessage;
import com.net.MNetHandler;

public class ResUserSetNameHandler extends MNetHandler {

    // 设置名字
    override public function action(): void{
        var msg:ResUserSetNameMessage = ResUserSetNameMessage(this.message);
        // todo
    }
}
}