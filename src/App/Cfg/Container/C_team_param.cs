using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 队伍参数
     */
    public class C_team_param {

        private System.Collections.Generic.List<Q_team_param> _list;
        public System.Collections.Generic.List<Q_team_param> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_team_param> _dic;
        public System.Collections.Generic.Dictionary<int, Q_team_param> Dic => _dic;

        public C_team_param(BinaryReader reader)
        {
            Q_team_param[] array = Q_team_param.Create(reader);
            _list = new System.Collections.Generic.List<Q_team_param>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_team_param>();
            _list.ForEach((Q_team_param model) =>
            {
                _dic[model.q_id] = model;
            });
        }

        public Q_team_param GetValue(int key)
        {
            Q_team_param ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
