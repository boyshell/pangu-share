package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 征兵及维护资源消耗
 */
public class Q_team_cost extends Bean {
    /** 国家(1魏2蜀3吴4汉5群) */
    private var _q_country:int;
    /** 星级 */
    private var _q_star:int;
    /** 兵种(1弓2步3骑) */
    private var _q_bingzhong:int;
    /** 征兵资源消耗(单个兵) */
    private var _q_zheng_bing_cost:int;
    /** 维护资源消耗(粮100个兵每小时) */
    private var _q_wei_hu_cost:int;

    override public function read(_buf:ByteArray): void {
        this._q_country = readInt(_buf);
        this._q_star = readInt(_buf);
        this._q_bingzhong = readInt(_buf);
        this._q_zheng_bing_cost = readInt(_buf);
        this._q_wei_hu_cost = readInt(_buf);
    }

    public function get q_country():int {
        return _q_country;
    }
    public function get q_star():int {
        return _q_star;
    }
    public function get q_bingzhong():int {
        return _q_bingzhong;
    }
    public function get q_zheng_bing_cost():int {
        return _q_zheng_bing_cost;
    }
    public function get q_wei_hu_cost():int {
        return _q_wei_hu_cost;
    }
}
}
