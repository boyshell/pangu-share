using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将组合
     */
    public class C_hero_combo {

        private List<Q_hero_combo> _list;
        public List<Q_hero_combo> List => _list;

        private Dictionary<int, Q_hero_combo> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_hero_combo> Dic => _dic; // todo key的类型自己确认

        public C_hero_combo(BinaryReader reader)
        {
            Q_hero_combo[] array = Q_hero_combo.Create(reader);
            _list = new List<Q_hero_combo>(array);

            _dic = new Dictionary<int, Q_hero_combo>(); // todo key的类型自己确认
            _list.ForEach((Q_hero_combo model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
