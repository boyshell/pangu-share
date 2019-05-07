package com.game.net.message.guild {

import com.game.net.message.guild.BGuildUser;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加入帮邀请
 */
public class ResGuildAddInviteeMessage extends Message {
  /** 被邀请者 */
  private var _invitee:BGuildUser;

  /** 被邀请者 */
  public function set invitee(value:BGuildUser):void {
    this._invitee = value;
  }

  /** 被邀请者 */
  public function get invitee():BGuildUser {
    return this._invitee;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._invitee);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._invitee = readBean(_buf, BGuildUser) as BGuildUser;
  }

  override public function getId(): int {
    return 401;
  }
}
}