package com.game.net.message.fight {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 使用技能
 */
public class BFightSkillPrepare extends Bean {
  /** 序号(回合*1000000)+顺序ID */
  private var _index:int;
  /** 使用者ID */
  private var _srcHeroUID:int;
  /** 技能ID */
  private var _skillID:int;

  /** 序号(回合*1000000)+顺序ID */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 序号(回合*1000000)+顺序ID */
  public function get index():int {
    return this._index;
  }

  /** 使用者ID */
  public function set srcHeroUID(value:int):void {
    this._srcHeroUID = value;
  }

  /** 使用者ID */
  public function get srcHeroUID():int {
    return this._srcHeroUID;
  }

  /** 技能ID */
  public function set skillID(value:int):void {
    this._skillID = value;
  }

  /** 技能ID */
  public function get skillID():int {
    return this._skillID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._index);
        writeInt(_buf, this._srcHeroUID);
        writeInt(_buf, this._skillID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
        this._srcHeroUID = readInt(_buf);
        this._skillID = readInt(_buf);
  }
}
}