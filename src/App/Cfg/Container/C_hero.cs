using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将
     */
    public class C_hero {

        private System.Collections.Generic.List<Q_hero> _list;
        public System.Collections.Generic.List<Q_hero> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_hero> _dic;
        public System.Collections.Generic.Dictionary<int, Q_hero> Dic => _dic;

        public C_hero(BinaryReader reader)
        {
            Q_hero[] array = Q_hero.Create(reader);
            _list = new System.Collections.Generic.List<Q_hero>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_hero>();
            _list.ForEach((Q_hero model) =>
            {
                _dic[model.q_id] = model;
            });
        }
    }
}
