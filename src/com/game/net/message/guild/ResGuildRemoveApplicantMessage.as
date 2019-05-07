package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 移除申请者
 */
public class ResGuildRemoveApplicantMessage extends Message {
  /** 申请者唯一ID */
  private var _applicantUID:long;

  /** 申请者唯一ID */
  public function set applicantUID(value:long):void {
    this._applicantUID = value;
  }

  /** 申请者唯一ID */
  public function get applicantUID():long {
    return this._applicantUID;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._applicantUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._applicantUID = readLong(_buf);
  }

  override public function getId(): int {
    return 399;
  }
}
}