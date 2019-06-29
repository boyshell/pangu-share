package com.game.net.message.shop {

import com.game.net.message.shop.BShop;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 商店刷新
 */
public class ResShopRefreshMessage extends Message {
  /** 商店信息 */
  private var _shop:BShop;

  /** 商店信息 */
  public function set shop(value:BShop):void {
    this._shop = value;
  }

  /** 商店信息 */
  public function get shop():BShop {
    return this._shop;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._shop);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._shop = readBean(_buf, BShop) as BShop;
  }

  override public function getId(): int {
    return 84;
  }
}
}