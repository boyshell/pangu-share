package com.game.net.message.train {

import com.game.net.message.train.BTrain;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 队伍设置
 */
public class ResTrainRefreshMessage extends Message {
  /** 演武信息 */
  private var _info:BTrain;

  /** 演武信息 */
  public function set info(value:BTrain):void {
    this._info = value;
  }

  /** 演武信息 */
  public function get info():BTrain {
    return this._info;
  }

  override public function write(_buf:ByteArray): void {
        writeBean(_buf, this._info);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._info = readBean(_buf, BTrain) as BTrain;
  }

  override public function getId(): int {
    return 468;
  }
}
}