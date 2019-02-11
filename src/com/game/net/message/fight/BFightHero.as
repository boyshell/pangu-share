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
  /** 武将ID */
  private var _heroID:int;
  /** 星 */
  private var _star:int;
  /** 等级 */
  private var _level:int;
  /** 是否觉醒 */
  private var _jueXing:Boolean;
  /** 当前兵种[1:弓][2:步][3:骑] */
  private var _bingZhong:int;
  /** 已解锁的兵种信息 */
  private var _bingzhongs:Vector.<BHeroBingZhong> = new Vector.<BHeroBingZhong>();
  /** 初始兵力 */
  private var _sBingLi:int;
  /** 结束兵力 */
  private var _eBingLi:int;
  /** 伤兵 */
  private var _hBingLi:int;
  /** 位置[1:大营][2:中军][3:前锋] */
  private var _position:int;

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

  /** 当前兵种[1:弓][2:步][3:骑] */
  public function set bingZhong(value:int):void {
    this._bingZhong = value;
  }

  /** 当前兵种[1:弓][2:步][3:骑] */
  public function get bingZhong():int {
    return this._bingZhong;
  }

  /** 已解锁的兵种信息 */
  public function set bingzhongs(value:Vector.<BHeroBingZhong>):void {
    this._bingzhongs = value;
  }

  /** 已解锁的兵种信息 */
  public function get bingzhongs():Vector.<BHeroBingZhong> {
    return this._bingzhongs;
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

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroID);
        writeInt(_buf, this._star);
        writeInt(_buf, this._level);
        writeBoolean(_buf, this._jueXing);
        writeInt(_buf, this._bingZhong);
    writeInt(_buf, this._bingzhongs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._bingzhongs.length; ++i_am_tmp_i) {
        _bingzhongs[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._sBingLi);
        writeInt(_buf, this._eBingLi);
        writeInt(_buf, this._hBingLi);
        writeInt(_buf, this._position);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroID = readInt(_buf);
        this._star = readInt(_buf);
        this._level = readInt(_buf);
        this._jueXing = readBoolean(_buf);
        this._bingZhong = readInt(_buf);
    size52413035 = readInt(_buf);
    this._bingzhongs = new Vector.<BHeroBingZhong>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._bingzhongs[i_am_tmp_i] = readBeanInList(_buf, BHeroBingZhong) as BHeroBingZhong;
    }
        this._sBingLi = readInt(_buf);
        this._eBingLi = readInt(_buf);
        this._hBingLi = readInt(_buf);
        this._position = readInt(_buf);
  }
}
}