package com.game.net.message.user {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 更新属性
 */
public class ResUserUpdateAttributeMessage extends Message {
  /** 类型[1:统帅][2:队伍数量][3:征兵队列数量][4:税收][5:征兵时间减少][6:预备兵恢复时间减少][7:前锋数量][8:预备兵上限][9:武将兵力上限][10:资源上限][11:资源(产量)][12:交易比例提升][13:税收比例提升][14:产量比例提升][15:武将卡获取经验比例提升][16:武将卡体力恢复比例提升] */
  private var _type:int;
  /** 值 */
  private var _value:int;

  /** 类型[1:统帅][2:队伍数量][3:征兵队列数量][4:税收][5:征兵时间减少][6:预备兵恢复时间减少][7:前锋数量][8:预备兵上限][9:武将兵力上限][10:资源上限][11:资源(产量)][12:交易比例提升][13:税收比例提升][14:产量比例提升][15:武将卡获取经验比例提升][16:武将卡体力恢复比例提升] */
  public function set type(value:int):void {
    this._type = value;
  }

  /** 类型[1:统帅][2:队伍数量][3:征兵队列数量][4:税收][5:征兵时间减少][6:预备兵恢复时间减少][7:前锋数量][8:预备兵上限][9:武将兵力上限][10:资源上限][11:资源(产量)][12:交易比例提升][13:税收比例提升][14:产量比例提升][15:武将卡获取经验比例提升][16:武将卡体力恢复比例提升] */
  public function get type():int {
    return this._type;
  }

  /** 值 */
  public function set value(value:int):void {
    this._value = value;
  }

  /** 值 */
  public function get value():int {
    return this._value;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._type);
        writeInt(_buf, this._value);
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._type = readInt(_buf);
        this._value = readInt(_buf);
  }

  override public function getId(): int {
    return 16;
  }
}
}