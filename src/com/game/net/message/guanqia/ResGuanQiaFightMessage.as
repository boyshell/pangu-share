package com.game.net.message.guanqia {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 闯关
 */
public class ResGuanQiaFightMessage extends Message {
  /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  private var _guanQiaID:int;

  /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  public function set guanQiaID(value:int):void {
    this._guanQiaID = value;
  }

  /** 关卡ID,BLoginInit.guanQiaID需要做同步更新,如果说是新的关卡并且取胜的话 */
  public function get guanQiaID():int {
    return this._guanQiaID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._guanQiaID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._guanQiaID = readInt(_buf);
  }

  override public function getId(): int {
    return 380;
  }
}
}