package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 装配技能
 */
public class ResHeroAddSkillMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 技能格子(1,2,3) */
  private var _grid:int;
  /** 技能ID */
  private var _skillID:int;

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

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

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._grid);
        writeInt(_buf, this._skillID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._grid = readInt(_buf);
        this._skillID = readInt(_buf);
  }

  override public function getId(): int {
    return 300;
  }
}
}