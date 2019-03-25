using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵及维护资源消耗
     */
    public class C_team_cost {

        private List<Q_team_cost> _list;
        public List<Q_team_cost> List => _list;

        private Dictionary<int, Q_team_cost> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_team_cost> Dic => _dic; // todo key的类型自己确认

        public C_team_cost(BinaryReader reader)
        {
            Q_team_cost[] array = Q_team_cost.Create(reader);
            _list = new List<Q_team_cost>(array);

            _dic = new Dictionary<int, Q_team_cost>(); // todo key的类型自己确认
            _list.ForEach((Q_team_cost model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
