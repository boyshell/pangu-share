package com.game.net.message.fight {

import com.game.net.message.hero.BHeroBingZhong;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 战斗武将卡
 */
public class BFightHero extends Bean {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 武将ID */
  private var _heroID:int;
  /** 星 */
  private var _star:int;
  /** 等级 */
  private var _level:int;
  /** 是否觉醒 */
  private var _jueXing:Boolean;
  /** 当前兵种 */
  private var _bingZhong:BHeroBingZhong;
  /** 初始兵力 */
  private var _sBingLi:int;
  /** 结束兵力 */
  private var _eBingLi:int;
  /** 伤兵 */
  private var _hBingLi:int;
  /** 位置[1:大营][2:中军][3:前锋] */
  private var _position:int;
  /** 普通杀伤 */
  private var _puTongShaShang:int;
  /** 战法杀伤 */
  private var _skillShaShang:int;
  /** 战法释放 */
  private var _skillTimes:int;
  /** 救援 */
  private var _recover:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 武将ID */
  public function set heroID(value:int):void {
    this._heroID = value;
  }

  /** 武将ID */
  public function get heroID():int {
    return this._heroID;
  }

  /** 星 */
  public function set star(value:int):void {
    this._star = value;
  }

  /** 星 */
  public function get star():int {
    return this._star;
  }

  /** 等级 */
  public function set level(value:int):void {
    this._level = value;
  }

  /** 等级 */
  public function get level():int {
    return this._level;
  }

  /** 是否觉醒 */
  public function set jueXing(value:Boolean):void {
    this._jueXing = value;
  }

  /** 是否觉醒 */
  public function get jueXing():Boolean {
    return this._jueXing;
  }

  /** 当前兵种 */
  public function set bingZhong(value:BHeroBingZhong):void {
    this._bingZhong = value;
  }

  /** 当前兵种 */
  public function get bingZhong():BHeroBingZhong {
    return this._bingZhong;
  }

  /** 初始兵力 */
  public function set sBingLi(value:int):void {
    this._sBingLi = value;
  }

  /** 初始兵力 */
  public function get sBingLi():int {
    return this._sBingLi;
  }

  /** 结束兵力 */
  public function set eBingLi(value:int):void {
    this._eBingLi = value;
  }

  /** 结束兵力 */
  public function get eBingLi():int {
    return this._eBingLi;
  }

  /** 伤兵 */
  public function set hBingLi(value:int):void {
    this._hBingLi = value;
  }

  /** 伤兵 */
  public function get hBingLi():int {
    return this._hBingLi;
  }

  /** 位置[1:大营][2:中军][3:前锋] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 位置[1:大营][2:中军][3:前锋] */
  public function get position():int {
    return this._position;
  }

  /** 普通杀伤 */
  public function set puTongShaShang(value:int):void {
    this._puTongShaShang = value;
  }

  /** 普通杀伤 */
  public function get puTongShaShang():int {
    return this._puTongShaShang;
  }

  /** 战法杀伤 */
  public function set skillShaShang(value:int):void {
    this._skillShaShang = value;
  }

  /** 战法杀伤 */
  public function get skillShaShang():int {
    return this._skillShaShang;
  }

  /** 战法释放 */
  public function set skillTimes(value:int):void {
    this._skillTimes = value;
  }

  /** 战法释放 */
  public function get skillTimes():int {
    return this._skillTimes;
  }

  /** 救援 */
  public function set recover(value:int):void {
    this._recover = value;
  }

  /** 救援 */
  public function get recover():int {
    return this._recover;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._heroID);
        writeInt(_buf, this._star);
        writeInt(_buf, this._level);
        writeBoolean(_buf, this._jueXing);
        writeBean(_buf, this._bingZhong);
        writeInt(_buf, this._sBingLi);
        writeInt(_buf, this._eBingLi);
        writeInt(_buf, this._hBingLi);
        writeInt(_buf, this._position);
        writeInt(_buf, this._puTongShaShang);
        writeInt(_buf, this._skillShaShang);
        writeInt(_buf, this._skillTimes);
        writeInt(_buf, this._recover);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._heroID = readInt(_buf);
        this._star = readInt(_buf);
        this._level = readInt(_buf);
        this._jueXing = readBoolean(_buf);
        this._bingZhong = readBean(_buf, BHeroBingZhong) as BHeroBingZhong;
        this._sBingLi = readInt(_buf);
        this._eBingLi = readInt(_buf);
        this._hBingLi = readInt(_buf);
        this._position = readInt(_buf);
        this._puTongShaShang = readInt(_buf);
        this._skillShaShang = readInt(_buf);
        this._skillTimes = readInt(_buf);
        this._recover = readInt(_buf);
  }
}
}