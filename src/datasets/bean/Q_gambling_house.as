package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 招募卡包
 */
public class Q_gambling_house extends Bean {
    /** 卡包ID */
    private var _q_id:int;
    /** 名字(有美术资源就可以干掉这个) */
    private var _q_name:string;
    /** 背景图 */
    private var _q_bg:int;
    /** 图标 */
    private var _q_icon:string;
    /** 卡包类型 */
    private var _q_type:int;
    /** 卡包参数 */
    private var _q_param:string;
    /** 价格类型(对应值类型) */
    private var _q_price_type:int;
    /** 招募价格[[次数,价格][次数,价格]…] */
    private var _q_price:string;
    /** 是否允许自定义次数 */
    private var _q_free_times:bool;
    /** 是否固定显示 */
    private var _q_static:bool;
    /** 星级权重[[星,权重][星,权重]…] */
    private var _q_star_weight:string;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_bg = readInt(_buf);
        this._q_icon = readString(_buf);
        this._q_type = readInt(_buf);
        this._q_param = readString(_buf);
        this._q_price_type = readInt(_buf);
        this._q_price = readString(_buf);
        this._q_free_times = readBool(_buf);
        this._q_static = readBool(_buf);
        this._q_star_weight = readString(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():string {
        return _q_name;
    }
    public function get q_bg():int {
        return _q_bg;
    }
    public function get q_icon():string {
        return _q_icon;
    }
    public function get q_type():int {
        return _q_type;
    }
    public function get q_param():string {
        return _q_param;
    }
    public function get q_price_type():int {
        return _q_price_type;
    }
    public function get q_price():string {
        return _q_price;
    }
    public function get q_free_times():bool {
        return _q_free_times;
    }
    public function get q_static():bool {
        return _q_static;
    }
    public function get q_star_weight():string {
        return _q_star_weight;
    }
}
}
