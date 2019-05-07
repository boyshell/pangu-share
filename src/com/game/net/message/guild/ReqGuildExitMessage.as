package com.game.net.message.guild {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 退出帮会
 */
public class ReqGuildExitMessage extends Message {

  override public function write(_buf:ByteArray): void {
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
  }

  override public function getId(): int {
    return 221;
  }
}
}