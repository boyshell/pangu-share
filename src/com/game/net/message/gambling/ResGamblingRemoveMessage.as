package com.game.net.message.gambling {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 移除卡包
 */
public class ResGamblingRemoveMessage extends Message {
  /** 卡包ID */
  private var _houseID:int;

  /** 卡包ID */
  public function set houseID(value:int):void {
    this._houseID = value;
  }

  /** 卡包ID */
  public function get houseID():int {
    return this._houseID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._houseID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._houseID = readInt(_buf);
  }

  override public function getId(): int {
    return 450;
  }
}
}