
namespace App.PacketMessage.Skill
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 移除技能
     */
    public class ResSkillRemovePacketMessage : Network.PacketMessage
    {
        /** 技能ID */
        public int skillID{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.skillID);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.skillID = ReadInt(reader);
        }

      public override int Id
      {
        get { return 293; }
      }
    }
}