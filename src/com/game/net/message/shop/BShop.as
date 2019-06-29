package com.game.net.message.shop {

import com.game.net.message.shop.BShopGoods;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 商店
 */
public class BShop extends Bean {
  /** 商品 */
  private var _goods:Vector.<BShopGoods> = new Vector.<BShopGoods>();
  /** 手动刷新价格 */
  private var _price:int;

  /** 商品 */
  public function set goods(value:Vector.<BShopGoods>):void {
    this._goods = value;
  }

  /** 商品 */
  public function get goods():Vector.<BShopGoods> {
    return this._goods;
  }

  /** 手动刷新价格 */
  public function set price(value:int):void {
    this._price = value;
  }

  /** 手动刷新价格 */
  public function get price():int {
    return this._price;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._goods.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._goods.length; ++i_am_tmp_i) {
        _goods[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._price);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._goods = new Vector.<BShopGoods>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._goods[i_am_tmp_i] = readBeanInList(_buf, BShopGoods) as BShopGoods;
    }
        this._price = readInt(_buf);
  }
}
}