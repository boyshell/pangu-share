package com.game.net.message.chat {

import com.game.net.message.chat.BChat;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天
 */
public class ResChatMessage extends Message {
  /** 频道类型[1:世界][2:帮会] */
  private var _type:int;
  /** 聊天 */
  private var _chat:BChat;

  /** 频道类型[1:世界][2:帮会] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 频道类型[1:世界][2:帮会] */
  public function get type():int {
    return this._type;
  }

  /** 聊天 */
  public function set chat(value:BChat):void {
    this._chat = value;
  }

  /** 聊天 */
  public function get chat():BChat {
    return this._chat;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeBean(_buf, this._chat);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._chat = readBean(_buf, BChat) as BChat;
  }

  override public function getId(): int {
    return 180;
  }
}
}