package com.game.net.handler.shop {

import com.Mgr;
import com.game.net.message.shop.ResShopBuyMessage;
import com.net.MNetHandler;

public class ResShopBuyHandler extends MNetHandler {

    // 购买商品
    override public function action(): void{
        var msg:ResShopBuyMessage = ResShopBuyMessage(this.message);
        // todo
    }
}
}