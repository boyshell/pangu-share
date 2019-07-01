package com.game.net.message.train {

import com.game.net.message.train.BTrainHero;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 演武
 */
public class BTrain extends Bean {
  /** 上次刷新时间 */
  private var _refreshTime:int;
  /** 预设队伍 */
  private var _heroes:Vector.<BTrainHero> = new Vector.<BTrainHero>();
  /** 难度[1:简单][2:普通][3:困难][4:极难1][5:极难2] */
  private var _diffculty:int;
  /** 已经战胜的序号 */
  private var _winIndex:int;
  /** 演武总次数 */
  private var _total:int;
  /** 各难度通关次数 */
  private var _winTimes:Vector.<int> = new Vector.<int>();

  /** 上次刷新时间 */
  public function set refreshTime(value:int):void {
    this._refreshTime = value;
  }

  /** 上次刷新时间 */
  public function get refreshTime():int {
    return this._refreshTime;
  }

  /** 预设队伍 */
  public function set heroes(value:Vector.<BTrainHero>):void {
    this._heroes = value;
  }

  /** 预设队伍 */
  public function get heroes():Vector.<BTrainHero> {
    return this._heroes;
  }

  /** 难度[1:简单][2:普通][3:困难][4:极难1][5:极难2] */
  public function set diffculty(value:int):void {
    this._diffculty = value;
  }

  /** 难度[1:简单][2:普通][3:困难][4:极难1][5:极难2] */
  public function get diffculty():int {
    return this._diffculty;
  }

  /** 已经战胜的序号 */
  public function set winIndex(value:int):void {
    this._winIndex = value;
  }

  /** 已经战胜的序号 */
  public function get winIndex():int {
    return this._winIndex;
  }

  /** 演武总次数 */
  public function set total(value:int):void {
    this._total = value;
  }

  /** 演武总次数 */
  public function get total():int {
    return this._total;
  }

  /** 各难度通关次数 */
  public function set winTimes(value:Vector.<int>):void {
    this._winTimes = value;
  }

  /** 各难度通关次数 */
  public function get winTimes():Vector.<int> {
    return this._winTimes;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._refreshTime);
    writeInt(_buf, this._heroes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._heroes.length; ++i_am_tmp_i) {
        _heroes[i_am_tmp_i].write(_buf);
    }
        writeInt(_buf, this._diffculty);
        writeInt(_buf, this._winIndex);
        writeInt(_buf, this._total);
    writeInt(_buf, this._winTimes.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._winTimes.length; ++i_am_tmp_i) {
        writeInt(_buf, _winTimes[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._refreshTime = readInt(_buf);
    size52413035 = readInt(_buf);
    this._heroes = new Vector.<BTrainHero>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._heroes[i_am_tmp_i] = readBeanInList(_buf, BTrainHero) as BTrainHero;
    }
        this._diffculty = readInt(_buf);
        this._winIndex = readInt(_buf);
        this._total = readInt(_buf);
    size52413035 = readInt(_buf);
    this._winTimes = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._winTimes[i_am_tmp_i] = readInt(_buf);
    }
  }
}
}