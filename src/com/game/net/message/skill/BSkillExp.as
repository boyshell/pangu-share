package com.game.net.message.skill {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能经验
 */
public class BSkillExp extends Bean {
  /** 技能经验 */
  private var _exp:int;
  /** 是否暴击 */
  private var _crit:Boolean;

  /** 技能经验 */
  public function set exp(value:int):void {
    this._exp = value;
  }

  /** 技能经验 */
  public function get exp():int {
    return this._exp;
  }

  /** 是否暴击 */
  public function set crit(value:Boolean):void {
    this._crit = value;
  }

  /** 是否暴击 */
  public function get crit():Boolean {
    return this._crit;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._exp);
        writeBoolean(_buf, this._crit);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._exp = readInt(_buf);
        this._crit = readBoolean(_buf);
  }
}
}