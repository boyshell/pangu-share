using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 建筑
     */
    public class C_building {

        private System.Collections.Generic.List<Q_building> _list;
        public System.Collections.Generic.List<Q_building> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_building> _dic;
        public System.Collections.Generic.Dictionary<int, Q_building> Dic => _dic;

        public C_building(BinaryReader reader)
        {
            Q_building[] array = Q_building.Create(reader);
            _list = new System.Collections.Generic.List<Q_building>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_building>();
            _list.ForEach((Q_building model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
