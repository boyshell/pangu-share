using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵及维护资源消耗
     */
    public class C_team_cost {

        private System.Collections.Generic.List<Q_team_cost> _list;
        public System.Collections.Generic.List<Q_team_cost> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_team_cost> _dic;
        public System.Collections.Generic.Dictionary<int, Q_team_cost> Dic => _dic;

        public C_team_cost(BinaryReader reader)
        {
            Q_team_cost[] array = Q_team_cost.Create(reader);
            _list = new System.Collections.Generic.List<Q_team_cost>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_team_cost>();
            _list.ForEach((Q_team_cost model) =>
            {
                _dic[model.q_country] = model;
            });
        }
    }
}
