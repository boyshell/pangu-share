package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 创建帮会
 */
public class ReqGuildCreateMessage extends Message {
  /** 帮会名字 */
  private var _name:String;

  /** 帮会名字 */
  public function set name(value:String):void {
    this._name = value;
  }

  /** 帮会名字 */
  public function get name():String {
    return this._name;
  }

  override public function write(_buf:ByteArray): void {
        writeString(_buf, this._name);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._name = readString(_buf);
  }

  override public function getId(): int {
    return 215;
  }
}
}