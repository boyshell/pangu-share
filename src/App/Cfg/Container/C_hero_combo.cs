using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将组合
     */
    public class C_hero_combo {

        private System.Collections.Generic.List<Q_hero_combo> _list;
        public System.Collections.Generic.List<Q_hero_combo> List => _list;

        private System.Collections.Generic.Dictionary<string, Q_hero_combo> _dic;
        public System.Collections.Generic.Dictionary<string, Q_hero_combo> Dic => _dic;

        public C_hero_combo(BinaryReader reader)
        {
            Q_hero_combo[] array = Q_hero_combo.Create(reader);
            _list = new System.Collections.Generic.List<Q_hero_combo>(array);

            _dic = new System.Collections.Generic.Dictionary<string, Q_hero_combo>();
            _list.ForEach((Q_hero_combo model) =>
            {
                _dic[model.q_name] = model;
            });
        }
    }
}
