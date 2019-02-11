package com.game.net.message.skill {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 技能进度
 */
public class BSkillProgress extends Bean {
  /** 技能ID */
  private var _skillID:int;
  /** 研究进度(百分比) */
  private var _progress:int;

  /** 技能ID */
  public function set skillID(value:int):void {
    this._skillID = value;
  }

  /** 技能ID */
  public function get skillID():int {
    return this._skillID;
  }

  /** 研究进度(百分比) */
  public function set progress(value:int):void {
    this._progress = value;
  }

  /** 研究进度(百分比) */
  public function get progress():int {
    return this._progress;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._skillID);
        writeInt(_buf, this._progress);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._skillID = readInt(_buf);
        this._progress = readInt(_buf);
  }
}
}