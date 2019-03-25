using System;
using System.IO;

namespace App.Cfg.Bean
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将
     */
    public class Q_hero : Util.Bean
    {
        /** 武将ID */
        public int q_id { get; }
        /** 武将队伍ID(用以判定上场唯一性的ID) */
        public int q_team_id { get; }
        /** 武将名字 */
        public string q_name { get; }
        /** 武将卡资源ID */
        public int q_card { get; }
        /** 星 */
        public int q_star { get; }
        /** 国家(1魏2蜀3吴4汉5群) */
        public int q_country { get; }
        /** 默认兵种(1弓2步3骑) */
        public int q_bingzhong_default { get; }
        /** 可进阶兵种列表(1弓2步3骑) */
        public string q_bingzhong_jinjie { get; }
        /** 统帅 */
        public int q_cost { get; }
        /** 性别(1男2女) */
        public int q_gender { get; }
        /** 攻击距离 */
        public int q_distance { get; }
        /** 攻击 */
        public int q_gongji { get; }
        /** 攻击成长 */
        public int q_gongji_g { get; }
        /** 防御 */
        public int q_fangyu { get; }
        /** 防御成长 */
        public int q_fangyu_g { get; }
        /** 谋略 */
        public int q_moulve { get; }
        /** 谋略成长 */
        public int q_moulve_g { get; }
        /** 速度 */
        public int q_sudu { get; }
        /** 速度成长 */
        public int q_sudu_g { get; }
        /** 攻城 */
        public int q_gongcheng { get; }
        /** 攻城成长 */
        public int q_gongcheng_g { get; }
        /** 默认技能 */
        public int q_skill { get; }
        /** 拆解技能 */
        public int q_chaijie_skill { get; }

        private Q_hero(BinaryReader reader)
        {
            this.q_id = ReadInt(reader);
            this.q_team_id = ReadInt(reader);
            this.q_name = ReadString(reader);
            this.q_card = ReadInt(reader);
            this.q_star = ReadInt(reader);
            this.q_country = ReadInt(reader);
            this.q_bingzhong_default = ReadInt(reader);
            this.q_bingzhong_jinjie = ReadString(reader);
            this.q_cost = ReadInt(reader);
            this.q_gender = ReadInt(reader);
            this.q_distance = ReadInt(reader);
            this.q_gongji = ReadInt(reader);
            this.q_gongji_g = ReadInt(reader);
            this.q_fangyu = ReadInt(reader);
            this.q_fangyu_g = ReadInt(reader);
            this.q_moulve = ReadInt(reader);
            this.q_moulve_g = ReadInt(reader);
            this.q_sudu = ReadInt(reader);
            this.q_sudu_g = ReadInt(reader);
            this.q_gongcheng = ReadInt(reader);
            this.q_gongcheng_g = ReadInt(reader);
            this.q_skill = ReadInt(reader);
            this.q_chaijie_skill = ReadInt(reader);
        }

        public static Q_hero[] Create(BinaryReader reader)
        {
            Q_hero[] array = new Q_hero[Util.ByteBufUtil.ReadInt(reader)];
            for (int i = 0; i < array.Length; ++i)
            {
                array[i] = new Q_hero(reader);
            }
            return array;
        }

        public override void Read(BinaryReader reader)
        {
            throw new NotImplementedException();
        }

        public override void Write(BinaryWriter writer)
        {
            throw new NotImplementedException();
        }
    }
}
