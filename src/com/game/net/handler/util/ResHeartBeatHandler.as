package com.game.net.handler.util {

import com.Mgr;
import com.game.net.message.util.ResHeartBeatMessage;
import com.net.MNetHandler;

public class ResHeartBeatHandler extends MNetHandler {

    // 心跳
    override public function action(): void{
        var msg:ResHeartBeatMessage = ResHeartBeatMessage(this.message);
        // todo
    }
}
}