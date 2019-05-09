package com.game.net.message.chat {

import com.game.net.message.chat.BChat;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天初始化
 */
public class ResChatInitMessage extends Message {
  /** 频道类型[1:世界][2:帮会] */
  private var _type:int;
  /** 聊天记录 */
  private var _chats:Vector.<BChat> = new Vector.<BChat>();

  /** 频道类型[1:世界][2:帮会] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 频道类型[1:世界][2:帮会] */
  public function get type():int {
    return this._type;
  }

  /** 聊天记录 */
  public function set chats(value:Vector.<BChat>):void {
    this._chats = value;
  }

  /** 聊天记录 */
  public function get chats():Vector.<BChat> {
    return this._chats;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
    writeInt(_buf, this._chats.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._chats.length; ++i_am_tmp_i) {
        _chats[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
    size52413035 = readInt(_buf);
    this._chats = new Vector.<BChat>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._chats[i_am_tmp_i] = readBeanInList(_buf, BChat) as BChat;
    }
  }

  override public function getId(): int {
    return 382;
  }
}
}