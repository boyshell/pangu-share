using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 招募卡包
     */
    public class C_gambling_house {

        public C_gambling_house(BinaryReader reader)
        {
            Q_gambling_house[] array = Q_gambling_house.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
