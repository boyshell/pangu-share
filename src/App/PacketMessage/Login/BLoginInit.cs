using Util;
using App.PacketMessage.Skill;
using App.PacketMessage.Building;
using App.PacketMessage.Team;
using App.PacketMessage.Gambling;
using App.PacketMessage.Land;
using App.PacketMessage.Hero;

namespace App.PacketMessage.Login
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
        /** 队伍列表 */
        public System.Collections.Generic.List<BTeam> teams{ get; set; } = new System.Collections.Generic.List<BTeam>();
        /** 武将卡可重置的时间 */
        public int heroResetTime{ get; set; }
        /** 建筑 */
        public System.Collections.Generic.List<BBuilding> buildings{ get; set; } = new System.Collections.Generic.List<BBuilding>();
        /** 招募信息 */
        public BGambling gambling{ get; set; }
        /** 领地信息 */
        public System.Collections.Generic.List<BLand> lands{ get; set; } = new System.Collections.Generic.List<BLand>();
        /** 属性列表 */
        public System.Collections.Generic.List<int> attributes{ get; set; } = new System.Collections.Generic.List<int>();

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
            WriteInt(writer, this.teams.Count);
            for (int t52413035 = 0; t52413035 < this.teams.Count; ++t52413035)
            {
                teams[t52413035].Write(writer);
            }
            WriteInt(writer, this.heroResetTime);
            WriteInt(writer, this.buildings.Count);
            for (int t52413035 = 0; t52413035 < this.buildings.Count; ++t52413035)
            {
                buildings[t52413035].Write(writer);
            }
            WriteBean(writer, this.gambling);
            WriteInt(writer, this.lands.Count);
            for (int t52413035 = 0; t52413035 < this.lands.Count; ++t52413035)
            {
                lands[t52413035].Write(writer);
            }
            WriteInt(writer, this.attributes.Count);
            for (int t52413035 = 0; t52413035 < this.attributes.Count; ++t52413035)
            {
                WriteInt(writer, attributes[t52413035]);
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
            {
                int size52413035 = ReadInt(reader);
                this.teams = new System.Collections.Generic.List<BTeam>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.teams.Add(new BTeam(reader));
                }
            }
            this.heroResetTime = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.buildings = new System.Collections.Generic.List<BBuilding>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.buildings.Add(new BBuilding(reader));
                }
            }
            this.gambling = ReadBool(reader) ? new BGambling(reader) : null;
            {
                int size52413035 = ReadInt(reader);
                this.lands = new System.Collections.Generic.List<BLand>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.lands.Add(new BLand(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.attributes = new System.Collections.Generic.List<int>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.attributes.Add(ReadInt(reader));
                }
            }
        }
    }
}