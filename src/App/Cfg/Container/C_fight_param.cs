using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗参数
     */
    public class C_fight_param {

        private List<Q_fight_param> _list;
        public List<Q_fight_param> List => _list;

        private Dictionary<int, Q_fight_param> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_fight_param> Dic => _dic; // todo key的类型自己确认

        public C_fight_param(BinaryReader reader)
        {
            Q_fight_param[] array = Q_fight_param.Create(reader);
            _list = new List<Q_fight_param>(array);

            _dic = new Dictionary<int, Q_fight_param>(); // todo key的类型自己确认
            _list.ForEach((Q_fight_param model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
