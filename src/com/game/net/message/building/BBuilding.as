package com.game.net.message.building {

import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑
 */
public class BBuilding extends Bean {
  /** 建筑ID */
  private var _buildingID:int;
  /** 等级 */
  private var _level:int;
  /** 升级时间 */
  private var _upgradeTime:int;

  /** 建筑ID */
  public function set buildingID(value:int):void {
    this._buildingID = value;
  }

  /** 建筑ID */
  public function get buildingID():int {
    return this._buildingID;
  }

  /** 等级 */
  public function set level(value:int):void {
    this._level = value;
  }

  /** 等级 */
  public function get level():int {
    return this._level;
  }

  /** 升级时间 */
  public function set upgradeTime(value:int):void {
    this._upgradeTime = value;
  }

  /** 升级时间 */
  public function get upgradeTime():int {
    return this._upgradeTime;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._buildingID);
        writeInt(_buf, this._level);
        writeInt(_buf, this._upgradeTime);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._buildingID = readInt(_buf);
        this._level = readInt(_buf);
        this._upgradeTime = readInt(_buf);
  }
}
}