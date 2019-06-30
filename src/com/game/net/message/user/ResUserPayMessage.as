package com.game.net.message.user {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 领取月卡
 */
public class ResUserPayMessage extends Message {
  /** 月卡到期时间 */
  private var _salaryTime:int;
  /** 月卡上次领取的时间 */
  private var _salaryPaidTime:int;

  /** 月卡到期时间 */
  public function set salaryTime(value:int):void {
    this._salaryTime = value;
  }

  /** 月卡到期时间 */
  public function get salaryTime():int {
    return this._salaryTime;
  }

  /** 月卡上次领取的时间 */
  public function set salaryPaidTime(value:int):void {
    this._salaryPaidTime = value;
  }

  /** 月卡上次领取的时间 */
  public function get salaryPaidTime():int {
    return this._salaryPaidTime;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._salaryTime);
        writeInt(_buf, this._salaryPaidTime);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._salaryTime = readInt(_buf);
        this._salaryPaidTime = readInt(_buf);
  }

  override public function getId(): int {
    return 453;
  }
}
}