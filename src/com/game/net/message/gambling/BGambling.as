package com.game.net.message.gambling {

import com.game.net.message.gambling.BGamblingMJ;
import com.game.net.message.gambling.BGamblingTB;
import com.game.net.message.gambling.BGamblingHD;
import com.game.net.message.gambling.BGamblingEX;
import com.game.net.message.gambling.BGamblingWJ;
import engine.base.data.Bean;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 招募卡包信息,按照顺序展示即可
 */
public class BGambling extends Bean {
  /** 活动卡包 */
  private var _hd:Vector.<BGamblingHD> = new Vector.<BGamblingHD>();
  /** 天下卡包 */
  private var _ex:Vector.<BGamblingEX> = new Vector.<BGamblingEX>();
  /** 名将卡包 */
  private var _mj:BGamblingMJ;
  /** 武将卡包 */
  private var _wj:BGamblingWJ;
  /** 铜币卡包 */
  private var _tb:Vector.<BGamblingTB> = new Vector.<BGamblingTB>();

  /** 活动卡包 */
  public function set hd(value:Vector.<BGamblingHD>):void {
    this._hd = value;
  }

  /** 活动卡包 */
  public function get hd():Vector.<BGamblingHD> {
    return this._hd;
  }

  /** 天下卡包 */
  public function set ex(value:Vector.<BGamblingEX>):void {
    this._ex = value;
  }

  /** 天下卡包 */
  public function get ex():Vector.<BGamblingEX> {
    return this._ex;
  }

  /** 名将卡包 */
  public function set mj(value:BGamblingMJ):void {
    this._mj = value;
  }

  /** 名将卡包 */
  public function get mj():BGamblingMJ {
    return this._mj;
  }

  /** 武将卡包 */
  public function set wj(value:BGamblingWJ):void {
    this._wj = value;
  }

  /** 武将卡包 */
  public function get wj():BGamblingWJ {
    return this._wj;
  }

  /** 铜币卡包 */
  public function set tb(value:Vector.<BGamblingTB>):void {
    this._tb = value;
  }

  /** 铜币卡包 */
  public function get tb():Vector.<BGamblingTB> {
    return this._tb;
  }

  override public function write(_buf:ByteArray): void {
    writeInt(_buf, this._hd.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._hd.length; ++i_am_tmp_i) {
        _hd[i_am_tmp_i].write(_buf);
    }
    writeInt(_buf, this._ex.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._ex.length; ++i_am_tmp_i) {
        _ex[i_am_tmp_i].write(_buf);
    }
        writeBean(_buf, this._mj);
        writeBean(_buf, this._wj);
    writeInt(_buf, this._tb.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._tb.length; ++i_am_tmp_i) {
        _tb[i_am_tmp_i].write(_buf);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
    size52413035 = readInt(_buf);
    this._hd = new Vector.<BGamblingHD>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._hd[i_am_tmp_i] = readBeanInList(_buf, BGamblingHD) as BGamblingHD;
    }
    size52413035 = readInt(_buf);
    this._ex = new Vector.<BGamblingEX>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._ex[i_am_tmp_i] = readBeanInList(_buf, BGamblingEX) as BGamblingEX;
    }
        this._mj = readBean(_buf, BGamblingMJ) as BGamblingMJ;
        this._wj = readBean(_buf, BGamblingWJ) as BGamblingWJ;
    size52413035 = readInt(_buf);
    this._tb = new Vector.<BGamblingTB>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._tb[i_am_tmp_i] = readBeanInList(_buf, BGamblingTB) as BGamblingTB;
    }
  }
}
}