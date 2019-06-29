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
  /** 类型[1:值(参数1：值类型，参数2：值数值)][2:卡包(参数1：卡包id)] */
  private var _type:int;
  /** 参数 */
  private var _params:Vector.<int> = new Vector.<int>();
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

  /** 类型[1:值(参数1：值类型，参数2：值数值)][2:卡包(参数1：卡包id)] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 类型[1:值(参数1：值类型，参数2：值数值)][2:卡包(参数1：卡包id)] */
  public function get type():int {
    return this._type;
  }

  /** 参数 */
  public function set params(value:Vector.<int>):void {
    this._params = value;
  }

  /** 参数 */
  public function get params():Vector.<int> {
    return this._params;
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
        writeInt(_buf, this._type);
    writeInt(_buf, this._params.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._params.length; ++i_am_tmp_i) {
        writeInt(_buf, _params[i_am_tmp_i]);
    }
        writeInt(_buf, this._priceType);
        writeInt(_buf, this._price);
        writeInt(_buf, this._showPrice);
        writeBoolean(_buf, this._available);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
        this._type = readInt(_buf);
    size52413035 = readInt(_buf);
    this._params = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._params[i_am_tmp_i] = readInt(_buf);
    }
        this._priceType = readInt(_buf);
        this._price = readInt(_buf);
        this._showPrice = readInt(_buf);
        this._available = readBoolean(_buf);
  }
}
}