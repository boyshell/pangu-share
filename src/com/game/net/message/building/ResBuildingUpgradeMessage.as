package com.game.net.message.building {

import com.game.net.message.building.BBuilding;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 建筑升级
 */
public class ResBuildingUpgradeMessage extends Message {
  /** 建筑信息 */
  private var _building:BBuilding;

  /** 建筑信息 */
  public function set building(value:BBuilding):void {
    this._building = value;
  }

  /** 建筑信息 */
  public function get building():BBuilding {
    return this._building;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._building);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._building = readBean(_buf, BBuilding) as BBuilding;
  }

  override public function getId(): int {
    return 355;
  }
}
}