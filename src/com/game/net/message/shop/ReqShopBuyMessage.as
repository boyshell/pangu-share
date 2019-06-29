package com.game.net.message.shop {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 购买商品
 */
public class ReqShopBuyMessage extends Message {
  /** 商品ID */
  private var _goodsUID:int;
  /** 价格 */
  private var _price:int;

  /** 商品ID */
  public function set goodsUID(value:int):void {
    this._goodsUID = value;
  }

  /** 商品ID */
  public function get goodsUID():int {
    return this._goodsUID;
  }

  /** 价格 */
  public function set price(value:int):void {
    this._price = value;
  }

  /** 价格 */
  public function get price():int {
    return this._price;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._goodsUID);
        writeInt(_buf, this._price);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._goodsUID = readInt(_buf);
        this._price = readInt(_buf);
  }

  override public function getId(): int {
    return 77;
  }
}
}