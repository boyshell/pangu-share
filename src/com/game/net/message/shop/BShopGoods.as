package com.game.net.message.shop {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 商品
 */
public class BShopGoods extends Bean {
  /** 唯一ID */
  private var _uid:int;
  /** 道具ID */
  private var _itemID:int;
  /** 道具数量 */
  private var _itemNum:int;
  /** 价格类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
  private var _priceType:int;
  /** 价格（卖价） */
  private var _price:int;
  /** 价格（喊价） */
  private var _showPrice:int;
  /** 是否可购买 */
  private var _available:Boolean;

  /** 唯一ID */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 唯一ID */
  public function get uid():int {
    return this._uid;
  }

  /** 道具ID */
  public function set itemID(value:int):void {
    this._itemID = value;
  }

  /** 道具ID */
  public function get itemID():int {
    return this._itemID;
  }

  /** 道具数量 */
  public function set itemNum(value:int):void {
    this._itemNum = value;
  }

  /** 道具数量 */
  public function get itemNum():int {
    return this._itemNum;
  }

  /** 价格类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
  public function set priceType(value:int):void {
    this._priceType = value;
  }

  /** 价格类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
  public function get priceType():int {
    return this._priceType;
  }

  /** 价格（卖价） */
  public function set price(value:int):void {
    this._price = value;
  }

  /** 价格（卖价） */
  public function get price():int {
    return this._price;
  }

  /** 价格（喊价） */
  public function set showPrice(value:int):void {
    this._showPrice = value;
  }

  /** 价格（喊价） */
  public function get showPrice():int {
    return this._showPrice;
  }

  /** 是否可购买 */
  public function set available(value:Boolean):void {
    this._available = value;
  }

  /** 是否可购买 */
  public function get available():Boolean {
    return this._available;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
        writeInt(_buf, this._itemID);
        writeInt(_buf, this._itemNum);
        writeInt(_buf, this._priceType);
        writeInt(_buf, this._price);
        writeInt(_buf, this._showPrice);
        writeBoolean(_buf, this._available);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._itemID = readInt(_buf);
        this._itemNum = readInt(_buf);
        this._priceType = readInt(_buf);
        this._price = readInt(_buf);
        this._showPrice = readInt(_buf);
        this._available = readBoolean(_buf);
  }
}
}