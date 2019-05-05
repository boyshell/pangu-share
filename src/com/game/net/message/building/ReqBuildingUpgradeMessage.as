package com.game.net.message.building {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑升级
 */
public class ReqBuildingUpgradeMessage extends Message {
  /** 建筑ID */
  private var _buildingID:int;
  /** 是否立即完成 */
  private var _immediately:Boolean;

  /** 建筑ID */
  public function set buildingID(value:int):void {
    this._buildingID = value;
  }

  /** 建筑ID */
  public function get buildingID():int {
    return this._buildingID;
  }

  /** 是否立即完成 */
  public function set immediately(value:Boolean):void {
    this._immediately = value;
  }

  /** 是否立即完成 */
  public function get immediately():Boolean {
    return this._immediately;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._buildingID);
        writeBoolean(_buf, this._immediately);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._buildingID = readInt(_buf);
        this._immediately = readBoolean(_buf);
  }

  override public function getId(): int {
    return 354;
  }
}
}