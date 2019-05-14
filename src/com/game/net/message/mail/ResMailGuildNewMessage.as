package com.game.net.message.mail {

import com.game.net.message.mail.BMailGuild;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 新的帮会邮件
 */
public class ResMailGuildNewMessage extends Message {
  /** 邮件 */
  private var _mail:BMailGuild;

  /** 邮件 */
  public function set mail(value:BMailGuild):void {
    this._mail = value;
  }

  /** 邮件 */
  public function get mail():BMailGuild {
    return this._mail;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._mail);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._mail = readBean(_buf, BMailGuild) as BMailGuild;
  }

  override public function getId(): int {
    return 412;
  }
}
}