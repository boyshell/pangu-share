package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 移除入帮邀请
 */
public class ResGuildRemoveInviteeMessage extends Message {
  /** 邀请者唯一ID */
  private var _inviteeUID:long;

  /** 邀请者唯一ID */
  public function set inviteeUID(value:long):void {
    this._inviteeUID = value;
  }

  /** 邀请者唯一ID */
  public function get inviteeUID():long {
    return this._inviteeUID;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._inviteeUID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._inviteeUID = readLong(_buf);
  }

  override public function getId(): int {
    return 398;
  }
}
}