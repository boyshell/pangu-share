package com.game.net.message.train {

import com.game.net.message.train.BTrainHero;
import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武挑战
 */
public class ReqTrainChallengeMessage extends Message {
  /** 挑战序号，1开始 */
  private var _index:int;
  /** 预设队伍 */
  private var _heroes:Vector.<BTrainHero> = new Vector.<BTrainHero>();

  /** 挑战序号，1开始 */
  public function set index(value:int):void {
    this._index = value;
  }

  /** 挑战序号，1开始 */
  public function get index():int {
    return this._index;
  }

  /** 预设队伍 */
  public function set heroes(value:Vector.<BTrainHero>):void {
    this._heroes = value;
  }

  /** 预设队伍 */
  public function get heroes():Vector.<BTrainHero> {
    return this._heroes;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._index);
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        _heroes[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._index = readInt(_buf);
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<BTrainHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BTrainHero) as BTrainHero;
    }
  }

  override public function getId(): int {
    return 464;
  }
}
}