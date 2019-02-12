using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑参数
     */
    public class C_building_param {

        public C_building_param(BinaryReader reader)
        {
            Q_building_param[] array = Q_building_param.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
