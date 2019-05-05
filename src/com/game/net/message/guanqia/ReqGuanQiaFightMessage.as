package com.game.net.message.guanqia {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 闯关
 */
public class ReqGuanQiaFightMessage extends Message {
  /** 队伍序号 */
  private var _teamIndex:int;
  /** 关卡ID(只能是通关了的关卡和下一关关卡) */
  private var _guanQiaID:int;

  /** 队伍序号 */
  public function set teamIndex(value:int):void {
    this._teamIndex = value;
  }

  /** 队伍序号 */
  public function get teamIndex():int {
    return this._teamIndex;
  }

  /** 关卡ID(只能是通关了的关卡和下一关关卡) */
  public function set guanQiaID(value:int):void {
    this._guanQiaID = value;
  }

  /** 关卡ID(只能是通关了的关卡和下一关关卡) */
  public function get guanQiaID():int {
    return this._guanQiaID;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._teamIndex);
        writeInt(_buf, this._guanQiaID);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._teamIndex = readInt(_buf);
        this._guanQiaID = readInt(_buf);
  }

  override public function getId(): int {
    return 379;
  }
}
}