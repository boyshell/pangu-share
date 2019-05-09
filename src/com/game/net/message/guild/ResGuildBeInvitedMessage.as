package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 被邀请入帮
 */
public class ResGuildBeInvitedMessage extends Message {
  /** 邀请者唯一ID */
  private var _inviterUID:long;
  /** 邀请者名字 */
  private var _inviterName:String;
  /** 邀请者帮会唯一ID */
  private var _inviterGuildUID:long;
  /** 邀请者帮会名字 */
  private var _inviterGuildName:String;

  /** 邀请者唯一ID */
  public function set inviterUID(value:long):void {
    this._inviterUID = value;
  }

  /** 邀请者唯一ID */
  public function get inviterUID():long {
    return this._inviterUID;
  }

  /** 邀请者名字 */
  public function set inviterName(value:String):void {
    this._inviterName = value;
  }

  /** 邀请者名字 */
  public function get inviterName():String {
    return this._inviterName;
  }

  /** 邀请者帮会唯一ID */
  public function set inviterGuildUID(value:long):void {
    this._inviterGuildUID = value;
  }

  /** 邀请者帮会唯一ID */
  public function get inviterGuildUID():long {
    return this._inviterGuildUID;
  }

  /** 邀请者帮会名字 */
  public function set inviterGuildName(value:String):void {
    this._inviterGuildName = value;
  }

  /** 邀请者帮会名字 */
  public function get inviterGuildName():String {
    return this._inviterGuildName;
  }

  override public function write(_buf:ByteArray): void {
        writeLong(_buf, this._inviterUID);
        writeString(_buf, this._inviterName);
        writeLong(_buf, this._inviterGuildUID);
        writeString(_buf, this._inviterGuildName);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._inviterUID = readLong(_buf);
        this._inviterName = readString(_buf);
        this._inviterGuildUID = readLong(_buf);
        this._inviterGuildName = readString(_buf);
  }

  override public function getId(): int {
    return 405;
  }
}
}