using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将兵种
     */
    public class C_bing_zhong {

        public C_bing_zhong(BinaryReader reader)
        {
            Q_bing_zhong[] array = Q_bing_zhong.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
