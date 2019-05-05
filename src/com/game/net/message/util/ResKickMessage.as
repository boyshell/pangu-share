package com.game.net.message.util {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 踢人
 */
public class ResKickMessage extends Message {
  /** 为何踢人[1:版本不一致][2:验证未通过][3:多次发送登录消息][4:顶号][5:流程错误][6:非法消息] */
  private var _type:int;

  /** 为何踢人[1:版本不一致][2:验证未通过][3:多次发送登录消息][4:顶号][5:流程错误][6:非法消息] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 为何踢人[1:版本不一致][2:验证未通过][3:多次发送登录消息][4:顶号][5:流程错误][6:非法消息] */
  public function get type():int {
    return this._type;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
  }

  override public function getId(): int {
    return 7;
  }
}
}