package com.game.net.message.user {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 移除战斗记录
 */
public class ResUserRemoveFightHistoryMessage extends Message {
  /** 战报唯一id */
  private var _uid:int;

  /** 战报唯一id */
  public function set uid(value:int):void {
    this._uid = value;
  }

  /** 战报唯一id */
  public function get uid():int {
    return this._uid;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._uid);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._uid = readInt(_buf);
  }

  override public function getId(): int {
    return 449;
  }
}
}