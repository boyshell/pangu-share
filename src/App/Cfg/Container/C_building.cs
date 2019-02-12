using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑
     */
    public class C_building {

        public C_building(BinaryReader reader)
        {
            Q_building[] array = Q_building.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
