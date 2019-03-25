using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将
     */
    public class C_hero {

        private List<Q_hero> _list;
        public List<Q_hero> List => _list;

        private Dictionary<int, Q_hero> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_hero> Dic => _dic; // todo key的类型自己确认

        public C_hero(BinaryReader reader)
        {
            Q_hero[] array = Q_hero.Create(reader);
            _list = new List<Q_hero>(array);

            _dic = new Dictionary<int, Q_hero>(); // todo key的类型自己确认
            _list.ForEach((Q_hero model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
