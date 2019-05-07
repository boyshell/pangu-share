package com.game.net.message.guild {

import com.game.net.message.guild.BGuildUser;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 添加申请者
 */
public class ResGuildAddApplicantMessage extends Message {
  /** 申请者 */
  private var _applicant:BGuildUser;

  /** 申请者 */
  public function set applicant(value:BGuildUser):void {
    this._applicant = value;
  }

  /** 申请者 */
  public function get applicant():BGuildUser {
    return this._applicant;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._applicant);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._applicant = readBean(_buf, BGuildUser) as BGuildUser;
  }

  override public function getId(): int {
    return 404;
  }
}
}