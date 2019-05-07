package com.game.net.message.guild {

import com.game.net.message.guild.BGuildUser;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加成员
 */
public class ResGuildAddMemberMessage extends Message {
  /** 成员信息 */
  private var _member:BGuildUser;

  /** 成员信息 */
  public function set member(value:BGuildUser):void {
    this._member = value;
  }

  /** 成员信息 */
  public function get member():BGuildUser {
    return this._member;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._member);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._member = readBean(_buf, BGuildUser) as BGuildUser;
  }

  override public function getId(): int {
    return 402;
  }
}
}