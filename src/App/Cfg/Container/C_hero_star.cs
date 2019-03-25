using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将星
     */
    public class C_hero_star {

        private List<Q_hero_star> _list;
        public List<Q_hero_star> List => _list;

        private Dictionary<int, Q_hero_star> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_hero_star> Dic => _dic; // todo key的类型自己确认

        public C_hero_star(BinaryReader reader)
        {
            Q_hero_star[] array = Q_hero_star.Create(reader);
            _list = new List<Q_hero_star>(array);

            _dic = new Dictionary<int, Q_hero_star>(); // todo key的类型自己确认
            _list.ForEach((Q_hero_star model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
