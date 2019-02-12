using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 兵种系
     */
    public class C_bing_zhong_xi {

        public C_bing_zhong_xi(BinaryReader reader)
        {
            Q_bing_zhong_xi[] array = Q_bing_zhong_xi.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
