package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 关卡
 */
public class Q_guan_qia extends Bean {
    /** 关卡ID */
    private var _q_id:int;
    /** 关卡名称 */
    private var _q_name:String;
    /** 章节ID */
    private var _q_chapter:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_name = readString(_buf);
        this._q_chapter = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_name():String {
        return _q_name;
    }
    public function get q_chapter():int {
        return _q_chapter;
    }
}
}
