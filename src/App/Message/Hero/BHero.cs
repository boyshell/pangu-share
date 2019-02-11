using Util;
using App.Message.Util;
using App.Message.Skill;

namespace App.Message.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将
     */
    public class BHero : Bean {

        public BHero() {}
        public BHero(System.IO.BinaryReader reader) => Read(reader);

        /** 唯一ID */
        public int uid{ get; set; }
        /** 武将ID */
        public int heroID{ get; set; }
        /** 星 */
        public int star{ get; set; }
        /** 等级 */
        public int level{ get; set; }
        /** 经验 */
        public int exp{ get; set; }
        /** 兵力 */
        public int bingLi{ get; set; }
        /** 体力 */
        public int tiLi{ get; set; }
        /** 技能数量上限 */
        public int skillMax{ get; set; }
        /** 技能 */
        public System.Collections.Generic.List<BSkillLevel> skills{ get; set; } = new System.Collections.Generic.List<BSkillLevel>();
        /** 配点 */
        public System.Collections.Generic.List<BAttribute> peiDian{ get; set; } = new System.Collections.Generic.List<BAttribute>();
        /** 下次可免费重置配点时间 */
        public int freePeiDianResetTime{ get; set; }
        /** 是否被保护 */
        public bool lock{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.uid);
            WriteInt(writer, this.heroID);
            WriteInt(writer, this.star);
            WriteInt(writer, this.level);
            WriteInt(writer, this.exp);
            WriteInt(writer, this.bingLi);
            WriteInt(writer, this.tiLi);
            WriteInt(writer, this.skillMax);
            WriteInt(writer, this.skills.Count);
            for (int t52413035 = 0; t52413035 < this.skills.Count; ++t52413035)
            {
                skills[t52413035].Write(writer);
            }
            WriteInt(writer, this.peiDian.Count);
            for (int t52413035 = 0; t52413035 < this.peiDian.Count; ++t52413035)
            {
                peiDian[t52413035].Write(writer);
            }
            WriteInt(writer, this.freePeiDianResetTime);
            WriteBool(writer, this.lock);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.uid = ReadInt(reader);
            this.heroID = ReadInt(reader);
            this.star = ReadInt(reader);
            this.level = ReadInt(reader);
            this.exp = ReadInt(reader);
            this.bingLi = ReadInt(reader);
            this.tiLi = ReadInt(reader);
            this.skillMax = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.skills = new System.Collections.Generic.List<BSkillLevel>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skills.Add(new BSkillLevel(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.peiDian = new System.Collections.Generic.List<BAttribute>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.peiDian.Add(new BAttribute(reader));
                }
            }
            this.freePeiDianResetTime = ReadInt(reader);
            this.lock = ReadBool(reader);
        }
    }
}