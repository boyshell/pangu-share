package com.game.net.message.train {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 队伍设置
 */
public class ReqTrainRefreshMessage extends Message {
  /** 演武难度[1:简单][2:普通][3:困难][4:极难1][5:极难2] */
  private var _difficulty:int;

  /** 演武难度[1:简单][2:普通][3:困难][4:极难1][5:极难2] */
  public function set difficulty(value:int):void {
    this._difficulty = value;
  }

  /** 演武难度[1:简单][2:普通][3:困难][4:极难1][5:极难2] */
  public function get difficulty():int {
    return this._difficulty;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._difficulty);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._difficulty = readInt(_buf);
  }

  override public function getId(): int {
    return 467;
  }
}
}