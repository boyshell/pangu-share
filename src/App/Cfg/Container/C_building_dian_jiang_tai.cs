using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 点将台
     */
    public class C_building_dian_jiang_tai {

        public C_building_dian_jiang_tai(BinaryReader reader)
        {
            Q_building_dian_jiang_tai[] array = Q_building_dian_jiang_tai.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
