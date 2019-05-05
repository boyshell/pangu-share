package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 点将台
 */
public class Q_building_dian_jiang_tai extends Bean {
    /** 等级 */
    private var _q_level:int;
    /** 该国家武将卡征兵时间减少 */
    private var _q_country_zheng_bing_time_reduce:int;

    override public function read(_buf:ByteArray): void {
        this._q_level = readInt(_buf);
        this._q_country_zheng_bing_time_reduce = readInt(_buf);
    }

    public function get q_level():int {
        return _q_level;
    }
    public function get q_country_zheng_bing_time_reduce():int {
        return _q_country_zheng_bing_time_reduce;
    }
}
}
