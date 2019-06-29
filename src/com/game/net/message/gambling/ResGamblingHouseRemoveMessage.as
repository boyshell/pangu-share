package com.game.net.message.gambling {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 移除卡包
 */
public class ResGamblingHouseRemoveMessage extends Message {
  /** 卡包ID */
  private var _id:int;

  /** 卡包ID */
  public function set id(value:int):void {
    this._id = value;
  }

  /** 卡包ID */
  public function get id():int {
    return this._id;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._id);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._id = readInt(_buf);
  }

  override public function getId(): int {
    return 450;
  }
}
}