using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍参数
     */
    public class C_team_param {

        private List<Q_team_param> _list;
        public List<Q_team_param> List => _list;

        private Dictionary<int, Q_team_param> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_team_param> Dic => _dic; // todo key的类型自己确认

        public C_team_param(BinaryReader reader)
        {
            Q_team_param[] array = Q_team_param.Create(reader);
            _list = new List<Q_team_param>(array);

            _dic = new Dictionary<int, Q_team_param>(); // todo key的类型自己确认
            _list.ForEach((Q_team_param model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
