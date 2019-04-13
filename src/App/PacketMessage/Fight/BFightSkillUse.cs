using Util;

namespace App.PacketMessage.Fight
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 使用技能
     */
    public class BFightSkillUse : Bean {

        public BFightSkillUse() {}
        public BFightSkillUse(System.IO.BinaryReader reader) => Read(reader);

        /** 序号(回合*1000000)+顺序ID */
        public int index{ get; set; }
        /** 是否加tab */
        public bool tab{ get; set; }
        /** 使用者ID */
        public int srcHeroUID{ get; set; }
        /** 技能ID */
        public int skillID{ get; set; }
        /** 失败原因[1:距离不足][2:无法使用主动战法][3:无法普攻][4:无法行动] */
        public int error{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.index);
            WriteBool(writer, this.tab);
            WriteInt(writer, this.srcHeroUID);
            WriteInt(writer, this.skillID);
            WriteInt(writer, this.error);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.index = ReadInt(reader);
            this.tab = ReadBool(reader);
            this.srcHeroUID = ReadInt(reader);
            this.skillID = ReadInt(reader);
            this.error = ReadInt(reader);
        }
    }
}