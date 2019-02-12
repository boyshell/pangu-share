using App.PacketMessage.Skill;

namespace App.PacketMessage.Hero
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将转化
     */
    public class ResHeroZhuanHuaPacketMessage : Network.PacketMessage
    {
        /** 经验展示 */
        public System.Collections.Generic.List<BSkillExp> exps{ get; set; } = new System.Collections.Generic.List<BSkillExp>();

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.exps.Count);
            for (int t52413035 = 0; t52413035 < this.exps.Count; ++t52413035)
            {
                exps[t52413035].Write(writer);
            }
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            {
                int size52413035 = ReadInt(reader);
                this.exps = new System.Collections.Generic.List<BSkillExp>();
                for (int t52413035 = 0; t52413035 < size52413035; ++t52413035)
                {
                    this.exps.Add(new BSkillExp(reader));
                }
            }
        }

      public override int Id
      {
        get { return 306; }
      }
    }
}