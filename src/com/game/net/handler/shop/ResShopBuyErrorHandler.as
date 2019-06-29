package com.game.net.handler.shop {

import com.Mgr;
import com.game.net.message.shop.ResShopBuyErrorMessage;
import com.net.MNetHandler;

public class ResShopBuyErrorHandler extends MNetHandler {

    // 购买商品
    override public function action(): void{
        var msg:ResShopBuyErrorMessage = ResShopBuyErrorMessage(this.message);
        // todo
    }
}
}