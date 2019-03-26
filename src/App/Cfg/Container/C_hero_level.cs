using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将等级
     */
    public class C_hero_level {

        private System.Collections.Generic.List<Q_hero_level> _list;
        public System.Collections.Generic.List<Q_hero_level> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_hero_level> _dic;
        public System.Collections.Generic.Dictionary<int, Q_hero_level> Dic => _dic;

        public C_hero_level(BinaryReader reader)
        {
            Q_hero_level[] array = Q_hero_level.Create(reader);
            _list = new System.Collections.Generic.List<Q_hero_level>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_hero_level>();
            _list.ForEach((Q_hero_level model) =>
            {
                _dic[model.q_level] = model;
            });
        }
    }
}
