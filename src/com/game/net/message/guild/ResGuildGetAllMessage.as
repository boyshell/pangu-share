package com.game.net.message.guild {

import com.game.net.message.guild.BGuildSimple;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 获取所有的帮会
 */
public class ResGuildGetAllMessage extends Message {
  /** 所有的帮会 */
  private var _guilds:Vector.<BGuildSimple> = new Vector.<BGuildSimple>();

  /** 所有的帮会 */
  public function set guilds(value:Vector.<BGuildSimple>):void {
    this._guilds = value;
  }

  /** 所有的帮会 */
  public function get guilds():Vector.<BGuildSimple> {
    return this._guilds;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._guilds.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._guilds.length; ++i_am_tmp_i) {
        _guilds[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._guilds = new Vector.<BGuildSimple>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._guilds[i_am_tmp_i] = readBeanInList(_buf, BGuildSimple) as BGuildSimple;
    }
  }

  override public function getId(): int {
    return 225;
  }
}
}