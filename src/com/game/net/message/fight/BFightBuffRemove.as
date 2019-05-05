package com.game.net.message.fight {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * BUFF移除
 */
public class BFightBuffRemove extends Bean {
  /** 序号(回合*1000000)+顺序ID */
  private var _index:int;
  /** 是否加tab */
  private var _tab:Boolean;
  /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
  private var _srcHeroUID:int;
  /** 来源技能ID */
  private var _srcSkillID:int;
  /** 移除BUFF的武将卡 */
  private var _dstHeroUID:int;
  /** BUFF */
  private var _buffID:int;

  /** 序号(回合*1000000)+顺序ID */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 序号(回合*1000000)+顺序ID */
  public function get index():int {
    return this._index;
  }

  /** 是否加tab */
  public function set tab(value:Boolean):void {
    this._tab = value;
  }

  /** 是否加tab */
  public function get tab():Boolean {
    return this._tab;
  }

  /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
  public function set srcHeroUID(value:int):void {
    this._srcHeroUID = value;
  }

  /** 来源唯一ID(0表示无行为者,负数则表示建筑类型) */
  public function get srcHeroUID():int {
    return this._srcHeroUID;
  }

  /** 来源技能ID */
  public function set srcSkillID(value:int):void {
    this._srcSkillID = value;
  }

  /** 来源技能ID */
  public function get srcSkillID():int {
    return this._srcSkillID;
  }

  /** 移除BUFF的武将卡 */
  public function set dstHeroUID(value:int):void {
    this._dstHeroUID = value;
  }

  /** 移除BUFF的武将卡 */
  public function get dstHeroUID():int {
    return this._dstHeroUID;
  }

  /** BUFF */
  public function set buffID(value:int):void {
    this._buffID = value;
  }

  /** BUFF */
  public function get buffID():int {
    return this._buffID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._index);
        writeBoolean(_buf, this._tab);
        writeInt(_buf, this._srcHeroUID);
        writeInt(_buf, this._srcSkillID);
        writeInt(_buf, this._dstHeroUID);
        writeInt(_buf, this._buffID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
        this._tab = readBoolean(_buf);
        this._srcHeroUID = readInt(_buf);
        this._srcSkillID = readInt(_buf);
        this._dstHeroUID = readInt(_buf);
        this._buffID = readInt(_buf);
  }
}
}