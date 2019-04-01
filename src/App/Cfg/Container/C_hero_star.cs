using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将星
     */
    public class C_hero_star {

        private System.Collections.Generic.List<Q_hero_star> _list;
        public System.Collections.Generic.List<Q_hero_star> List => _list;

        private System.Collections.Generic.Dictionary<int, Q_hero_star> _dic;
        public System.Collections.Generic.Dictionary<int, Q_hero_star> Dic => _dic;

        public C_hero_star(BinaryReader reader)
        {
            Q_hero_star[] array = Q_hero_star.Create(reader);
            _list = new System.Collections.Generic.List<Q_hero_star>(array);

            _dic = new System.Collections.Generic.Dictionary<int, Q_hero_star>();
            _list.ForEach((Q_hero_star model) =>
            {
                _dic[model.q_hero_star] = model;
            });
        }

        public Q_hero_star GetValue(int key)
        {
            Q_hero_star ret;
            _dic.TryGetValue(key, out ret);
            return ret;
        }
    }
}
