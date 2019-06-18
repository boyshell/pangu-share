package com.game.net.message.user {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 设置名字
 */
public class ReqUserSetNameMessage extends Message {
  /** 名字 */
  private var _showName:String;

  /** 名字 */
  public function set showName(value:String):void {
    this._showName = value;
  }

  /** 名字 */
  public function get showName():String {
    return this._showName;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._showName);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._showName = readString(_buf);
  }

  override public function getId(): int {
    return 439;
  }
}
}