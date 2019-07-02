package com.game.net.message.fight {

import com.game.net.message.hero.BHeroBingZhong;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 队伍简介
 */
public class BFightBriefTeam extends Bean {
  /** 名字 */
  private var _name:String;
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

  /** 名字 */
  public function set name(value:String):void {
    this._name = value;
  }

  /** 名字 */
  public function get name():String {
    return this._name;
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

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._name);
        writeInt(_buf, this._heroID);
        writeInt(_buf, this._star);
        writeInt(_buf, this._level);
        writeBoolean(_buf, this._jueXing);
        writeBean(_buf, this._bingZhong);
        writeInt(_buf, this._sBingLi);
        writeInt(_buf, this._eBingLi);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._name = readString(_buf);
        this._heroID = readInt(_buf);
        this._star = readInt(_buf);
        this._level = readInt(_buf);
        this._jueXing = readBoolean(_buf);
        this._bingZhong = readBean(_buf, BHeroBingZhong) as BHeroBingZhong;
        this._sBingLi = readInt(_buf);
        this._eBingLi = readInt(_buf);
  }
}
}