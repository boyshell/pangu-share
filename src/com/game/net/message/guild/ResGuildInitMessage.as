package com.game.net.message.guild {

import com.game.net.message.guild.BGuild;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 初始化帮会信息
 */
public class ResGuildInitMessage extends Message {
  /** 帮会信息 */
  private var _guild:BGuild;

  /** 帮会信息 */
  public function set guild(value:BGuild):void {
    this._guild = value;
  }

  /** 帮会信息 */
  public function get guild():BGuild {
    return this._guild;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._guild);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._guild = readBean(_buf, BGuild) as BGuild;
  }

  override public function getId(): int {
    return 227;
  }
}
}