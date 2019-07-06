package datasets.bean {

import engine.base.data.Bean;
import engine.base.data.ByteArray;

/**
 * Created by FreeMarker. DO NOT EDIT!!!
 * 卡片焦点
 */
public class Q_card_focus extends Bean {
    /** 卡片ID */
    private var _q_id:int;
    /** 焦点x */
    private var _q_x:int;
    /** 焦点y */
    private var _q_y:int;

    override public function read(_buf:ByteArray): void {
        this._q_id = readInt(_buf);
        this._q_x = readInt(_buf);
        this._q_y = readInt(_buf);
    }

    public function get q_id():int {
        return _q_id;
    }
    public function get q_x():int {
        return _q_x;
    }
    public function get q_y():int {
        return _q_y;
    }
}
}
