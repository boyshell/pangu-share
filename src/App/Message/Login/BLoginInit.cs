using Util;
using App.Message.Hero;
using App.Message.Skill;

namespace App.Message.Login
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 初始化数据
     */
    public class BLoginInit : Bean {

        public BLoginInit() {}
        public BLoginInit(System.IO.BinaryReader reader) => Read(reader);

        /** 名字 */
        public string name{ get; set; }
        /** 值列表 */
        public System.Collections.Generic.List<int> values{ get; set; } = new System.Collections.Generic.List<int>();
        /** 武将卡数量上限 */
        public int heroMax{ get; set; }
        /** 武将列表 */
        public System.Collections.Generic.List<BHero> heroes{ get; set; } = new System.Collections.Generic.List<BHero>();
        /** 技能数量上限 */
        public int skillMax{ get; set; }
        /** 技能列表 */
        public System.Collections.Generic.List<BSkillProgress> skills{ get; set; } = new System.Collections.Generic.List<BSkillProgress>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteString(writer, this.name);
            WriteInt(writer, this.values.Count);
            for (int t52413035 = 0; t52413035 < this.values.Count; ++t52413035)
            {
                WriteInt(writer, values[t52413035]);
            }
            WriteInt(writer, this.heroMax);
            WriteInt(writer, this.heroes.Count);
            for (int t52413035 = 0; t52413035 < this.heroes.Count; ++t52413035)
            {
                heroes[t52413035].Write(writer);
            }
            WriteInt(writer, this.skillMax);
            WriteInt(writer, this.skills.Count);
            for (int t52413035 = 0; t52413035 < this.skills.Count; ++t52413035)
            {
                skills[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.name = ReadString(reader);
            {
                int size52413035 = ReadInt(reader);
                this.values = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.values.Add(ReadInt(reader));
                }
            }
            this.heroMax = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.heroes = new System.Collections.Generic.List<BHero>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroes.Add(new BHero(reader));
                }
            }
            this.skillMax = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.skills = new System.Collections.Generic.List<BSkillProgress>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skills.Add(new BSkillProgress(reader));
                }
            }
        }
    }
}