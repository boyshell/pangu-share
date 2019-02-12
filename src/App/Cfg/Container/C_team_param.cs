using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍参数
     */
    public class C_team_param {

        public C_team_param(BinaryReader reader)
        {
            Q_team_param[] array = Q_team_param.Create(reader);
            // todo 你想咋个操作这个array都可以
        }
    }
}
