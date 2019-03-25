using System.IO;
using App.Cfg.Bean;

namespace App.Cfg.Container
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * buff
     */
    public class C_buff {

        private List<Q_buff> _list;
        public List<Q_buff> List => _list;

        private Dictionary<int, Q_buff> _dic; // todo key的类型自己确认
        public Dictionary<int, Q_buff> Dic => _dic; // todo key的类型自己确认

        public C_buff(BinaryReader reader)
        {
            Q_buff[] array = Q_buff.Create(reader);
            _list = new List<Q_buff>(array);

            _dic = new Dictionary<int, Q_buff>(); // todo key的类型自己确认
            _list.ForEach((Q_buff model) =>
            {
                _dic[model.xxx] = model; // todo key的类型自己确认
            });
        }
    }
}
