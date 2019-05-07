package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 修改帮会职位
 */
public class ReqGuildChangePositionMessage extends Message {
  /** 成员唯一ID */
  private var _memberUID:long;
  /** 职位[1:皇帝][2:平民] */
  private var _position:int;

  /** 成员唯一ID */
  public function set memberUID(value:long):void {
    this._memberUID = value;
  }

  /** 成员唯一ID */
  public function get memberUID():long {
    return this._memberUID;
  }

  /** 职位[1:皇帝][2:平民] */
  public function set position(value:int):void {
    this._position = value;
  }

  /** 职位[1:皇帝][2:平民] */
  public function get position():int {
    return this._position;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._memberUID);
        writeInt(_buf, this._position);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._memberUID = readLong(_buf);
        this._position = readInt(_buf);
  }

  override public function getId(): int {
    return 212;
  }
}
}