package com.game.net.message.user {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 玩家值
 */
public class BUserValue extends Bean {
  /** 类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
  private var _type:int;
  /** 值 */
  private var _value:int;

  /** 类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 类型[1:铜币][2:元宝(充值)][3:元宝(非充值)][4:技能经验][5:资源][6:预备兵] */
  public function get type():int {
    return this._type;
  }

  /** 值 */
  public function set value(value:int):void {
    this._value = value;
  }

  /** 值 */
  public function get value():int {
    return this._value;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeInt(_buf, this._value);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._value = readInt(_buf);
  }
}
}