package com.game.net.message.util {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * GM指令
 */
public class ResGMMessage extends Message {
  /** 返回的提示,也有可能不返回 */
  private var _content:String;

  /** 返回的提示,也有可能不返回 */
  public function set content(value:String):void {
    this._content = value;
  }

  /** 返回的提示,也有可能不返回 */
  public function get content():String {
    return this._content;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._content);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._content = readString(_buf);
  }

  override public function getId(): int {
    return 15;
  }
}
}