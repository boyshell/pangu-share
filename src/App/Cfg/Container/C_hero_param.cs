using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将参数
     */
    public class C_hero_param {

        private List<Q_hero_param> _list;
        public List<Q_hero_param> List => _list;

        private Dictionary<int, Q_hero_param> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_hero_param> Dic => _dic; // todo key的类型自己确认

        public C_hero_param(BinaryReader reader)
        {
            Q_hero_param[] array = Q_hero_param.Create(reader);
            _list = new List<Q_hero_param>(array);

            _dic = new Dictionary<int, Q_hero_param>(); // todo key的类型自己确认
            _list.ForEach((Q_hero_param model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
