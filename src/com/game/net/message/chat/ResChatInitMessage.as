package com.game.net.message.chat {

import com.game.net.message.chat.BChatChannel;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 聊天初始化
 */
public class ResChatInitMessage extends Message {
  /** 聊天频道信息 */
  private var _channels:Vector.<BChatChannel> = new Vector.<BChatChannel>();

  /** 聊天频道信息 */
  public function set channels(value:Vector.<BChatChannel>):void {
    this._channels = value;
  }

  /** 聊天频道信息 */
  public function get channels():Vector.<BChatChannel> {
    return this._channels;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._channels.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._channels.length; ++i_am_tmp_i) {
        _channels[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._channels = new Vector.<BChatChannel>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._channels[i_am_tmp_i] = readBeanInList(_buf, BChatChannel) as BChatChannel;
    }
  }

  override public function getId(): int {
    return 382;
  }
}
}