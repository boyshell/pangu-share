package com.game.net.handler.shop {

import com.Mgr;
import com.game.net.message.shop.ResShopRefreshMessage;
import com.net.MNetHandler;

public class ResShopRefreshHandler extends MNetHandler {

    // 商店刷新
    override public function action(): void{
        var msg:ResShopRefreshMessage = ResShopRefreshMessage(this.message);
        // todo
    }
}
}