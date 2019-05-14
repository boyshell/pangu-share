package com.game.net.message.mail {

import com.game.net.message.mail.BMailSystem;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 新的系统邮件
 */
public class ResMailSystemNewMessage extends Message {
  /** 邮件 */
  private var _mail:BMailSystem;

  /** 邮件 */
  public function set mail(value:BMailSystem):void {
    this._mail = value;
  }

  /** 邮件 */
  public function get mail():BMailSystem {
    return this._mail;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._mail);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._mail = readBean(_buf, BMailSystem) as BMailSystem;
  }

  override public function getId(): int {
    return 417;
  }
}
}