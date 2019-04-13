using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗日志
     */
    public class BFight : Bean {

        public BFight() {}
        public BFight(System.IO.BinaryReader reader) => Read(reader);

        /** 左边队伍 */
        public BFightTeam lTeam{ get; set; }
        /** 右边队伍 */
        public BFightTeam rTeam{ get; set; }
        /** 日志:准备使用技能 */
        public System.Collections.Generic.List<BFightSkillPrepare> skillPrepare{ get; set; } = new System.Collections.Generic.List<BFightSkillPrepare>();
        /** 日志:使用技能 */
        public System.Collections.Generic.List<BFightSkillUse> skillUse{ get; set; } = new System.Collections.Generic.List<BFightSkillUse>();
        /** 日志:添加buff */
        public System.Collections.Generic.List<BFightBuffAdd> buffAdd{ get; set; } = new System.Collections.Generic.List<BFightBuffAdd>();
        /** 日志:移除buff */
        public System.Collections.Generic.List<BFightBuffRemove> buffRemove{ get; set; } = new System.Collections.Generic.List<BFightBuffRemove>();
        /** 日志:buff触发 */
        public System.Collections.Generic.List<BFightBuffTrigger> buffTrigger{ get; set; } = new System.Collections.Generic.List<BFightBuffTrigger>();
        /** 日志:兵力变更 */
        public System.Collections.Generic.List<BFightHeroBingLiChange> heroBingLiChange{ get; set; } = new System.Collections.Generic.List<BFightHeroBingLiChange>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteBean(writer, this.lTeam);
            WriteBean(writer, this.rTeam);
            WriteInt(writer, this.skillPrepare.Count);
            for (int t52413035 = 0; t52413035 < this.skillPrepare.Count; ++t52413035)
            {
                skillPrepare[t52413035].Write(writer);
            }
            WriteInt(writer, this.skillUse.Count);
            for (int t52413035 = 0; t52413035 < this.skillUse.Count; ++t52413035)
            {
                skillUse[t52413035].Write(writer);
            }
            WriteInt(writer, this.buffAdd.Count);
            for (int t52413035 = 0; t52413035 < this.buffAdd.Count; ++t52413035)
            {
                buffAdd[t52413035].Write(writer);
            }
            WriteInt(writer, this.buffRemove.Count);
            for (int t52413035 = 0; t52413035 < this.buffRemove.Count; ++t52413035)
            {
                buffRemove[t52413035].Write(writer);
            }
            WriteInt(writer, this.buffTrigger.Count);
            for (int t52413035 = 0; t52413035 < this.buffTrigger.Count; ++t52413035)
            {
                buffTrigger[t52413035].Write(writer);
            }
            WriteInt(writer, this.heroBingLiChange.Count);
            for (int t52413035 = 0; t52413035 < this.heroBingLiChange.Count; ++t52413035)
            {
                heroBingLiChange[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.lTeam = ReadBool(reader) ? new BFightTeam(reader) : null;
            this.rTeam = ReadBool(reader) ? new BFightTeam(reader) : null;
            {
                int size52413035 = ReadInt(reader);
                this.skillPrepare = new System.Collections.Generic.List<BFightSkillPrepare>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skillPrepare.Add(new BFightSkillPrepare(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.skillUse = new System.Collections.Generic.List<BFightSkillUse>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skillUse.Add(new BFightSkillUse(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.buffAdd = new System.Collections.Generic.List<BFightBuffAdd>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.buffAdd.Add(new BFightBuffAdd(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.buffRemove = new System.Collections.Generic.List<BFightBuffRemove>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.buffRemove.Add(new BFightBuffRemove(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.buffTrigger = new System.Collections.Generic.List<BFightBuffTrigger>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.buffTrigger.Add(new BFightBuffTrigger(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.heroBingLiChange = new System.Collections.Generic.List<BFightHeroBingLiChange>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.heroBingLiChange.Add(new BFightHeroBingLiChange(reader));
                }
            }
        }
    }
}