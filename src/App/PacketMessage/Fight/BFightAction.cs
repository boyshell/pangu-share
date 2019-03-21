using Util;
using App.PacketMessage.Fight;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 战斗行为
     */
    public class BFightAction : Bean {

        public BFightAction() {}
        public BFightAction(System.IO.BinaryReader reader) => Read(reader);

        /** 行为者唯一ID(0表示无行为者,负数则表示建筑类型) */
        public int heroUID{ get; set; }
        /** 移除的buff */
        public System.Collections.Generic.List<BFightBuffRemove> removedBuffs{ get; set; } = new System.Collections.Generic.List<BFightBuffRemove>();
        /** buff行为 */
        public System.Collections.Generic.List<BFightBuffTrigger> tirggerBuffs{ get; set; } = new System.Collections.Generic.List<BFightBuffTrigger>();
        /** 技能行为 */
        public System.Collections.Generic.List<BFightSkill> skills{ get; set; } = new System.Collections.Generic.List<BFightSkill>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.removedBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.removedBuffs.Count; ++t52413035)
            {
                removedBuffs[t52413035].Write(writer);
            }
            WriteInt(writer, this.tirggerBuffs.Count);
            for (int t52413035 = 0; t52413035 < this.tirggerBuffs.Count; ++t52413035)
            {
                tirggerBuffs[t52413035].Write(writer);
            }
            WriteInt(writer, this.skills.Count);
            for (int t52413035 = 0; t52413035 < this.skills.Count; ++t52413035)
            {
                skills[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            {
                int size52413035 = ReadInt(reader);
                this.removedBuffs = new System.Collections.Generic.List<BFightBuffRemove>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.removedBuffs.Add(new BFightBuffRemove(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.tirggerBuffs = new System.Collections.Generic.List<BFightBuffTrigger>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.tirggerBuffs.Add(new BFightBuffTrigger(reader));
                }
            }
            {
                int size52413035 = ReadInt(reader);
                this.skills = new System.Collections.Generic.List<BFightSkill>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.skills.Add(new BFightSkill(reader));
                }
            }
        }
    }
}