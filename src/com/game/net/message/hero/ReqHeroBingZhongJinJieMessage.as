package com.game.net.message.hero {

import com.net.Message;
import engine.base.data.long;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 武将兵种进阶
 */
public class ReqHeroBingZhongJinJieMessage extends Message {
  /** 武将唯一ID */
  private var _heroUID:int;
  /** 兵种[1:弓][2:步][3:骑] */
  private var _bingZhong:int;
  /** 材料武将ID */
  private var _materialHeroIDs:Vector.<int> = new Vector.<int>();

  /** 武将唯一ID */
  public function set heroUID(value:int):void {
    this._heroUID = value;
  }

  /** 武将唯一ID */
  public function get heroUID():int {
    return this._heroUID;
  }

  /** 兵种[1:弓][2:步][3:骑] */
  public function set bingZhong(value:int):void {
    this._bingZhong = value;
  }

  /** 兵种[1:弓][2:步][3:骑] */
  public function get bingZhong():int {
    return this._bingZhong;
  }

  /** 材料武将ID */
  public function set materialHeroIDs(value:Vector.<int>):void {
    this._materialHeroIDs = value;
  }

  /** 材料武将ID */
  public function get materialHeroIDs():Vector.<int> {
    return this._materialHeroIDs;
  }

  override public function write(_buf:ByteArray): void {
        writeInt(_buf, this._heroUID);
        writeInt(_buf, this._bingZhong);
    writeInt(_buf, this._materialHeroIDs.length);
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < this._materialHeroIDs.length; ++i_am_tmp_i) {
        writeInt(_buf, _materialHeroIDs[i_am_tmp_i]);
    }
  }

  override public function read(_buf:ByteArray): void {
    var size52413035:int;
        this._heroUID = readInt(_buf);
        this._bingZhong = readInt(_buf);
    size52413035 = readInt(_buf);
    this._materialHeroIDs = new Vector.<int>();
    for (var i_am_tmp_i:int = 0; i_am_tmp_i < size52413035; ++i_am_tmp_i) {
        this._materialHeroIDs[i_am_tmp_i] = readInt(_buf);
    }
  }

  override public function getId(): int {
    return 339;
  }
}
}