package com.game.net.message.shop {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 商店刷新
 */
public class ReqShopRefreshMessage extends Message {
  /** 价格 */
  private var _price:int;

  /** 价格 */
  public function set price(value:int):void {
    this._price = value;
  }

  /** 价格 */
  public function get price():int {
    return this._price;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._price);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._price = readInt(_buf);
  }

  override public function getId(): int {
    return 83;
  }
}
}