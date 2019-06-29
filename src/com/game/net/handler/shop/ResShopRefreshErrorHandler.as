package com.game.net.handler.shop {

import com.Mgr;
import com.game.net.message.shop.ResShopRefreshErrorMessage;
import com.net.MNetHandler;

public class ResShopRefreshErrorHandler extends MNetHandler {

    // 商店刷新
    override public function action(): void{
        var msg:ResShopRefreshErrorMessage = ResShopRefreshErrorMessage(this.message);
        // todo
    }
}
}