using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵及维护资源消耗
     */
    public class C_team_cost {

        public C_team_cost(BinaryReader reader)
        {
            Q_team_cost[] array = Q_team_cost.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
