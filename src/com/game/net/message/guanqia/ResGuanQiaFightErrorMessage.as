package com.game.net.message.guanqia {

import com.net.Message;
import engine.base.data.long;
import com.game.net.beans.*;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 闯关错误
 */
public class ResGuanQiaFightErrorMessage extends Message {
  /**  */
  private var _error:String;

  public function get error():String {
    return this._error;
  }

  override public function write(_buf:ByteArray): void {
    writeString(_buf, error);
  }

  override public function read(_buf:ByteArray): void {
    this._error = readString(_buf);
  }

  override public function getId():int {
    return 381;
  }
}
}