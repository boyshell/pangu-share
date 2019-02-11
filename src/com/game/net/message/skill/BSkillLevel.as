package com.game.net.message.skill {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能等级
 */
public class BSkillLevel extends Bean {
  /** 技能格子(1,2,3) */
  private var _grid:int;
  /** 技能ID */
  private var _skillID:int;
  /** 技能等级 */
  private var _level:int;

  /** 技能格子(1,2,3) */
  public function set grid(value:int):void {
    this._grid = value;
  }

  /** 技能格子(1,2,3) */
  public function get grid():int {
    return this._grid;
  }

  /** 技能ID */
  public function set skillID(value:int):void {
    this._skillID = value;
  }

  /** 技能ID */
  public function get skillID():int {
    return this._skillID;
  }

  /** 技能等级 */
  public function set level(value:int):void {
    this._level = value;
  }

  /** 技能等级 */
  public function get level():int {
    return this._level;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._grid);
        writeInt(_buf, this._skillID);
        writeInt(_buf, this._level);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._grid = readInt(_buf);
        this._skillID = readInt(_buf);
        this._level = readInt(_buf);
  }
}
}