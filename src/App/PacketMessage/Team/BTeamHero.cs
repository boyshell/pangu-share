using Util;
using App.PacketMessage.Team;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 武将(队伍中)
     */
    public class BTeamHero : Bean {

        public BTeamHero() {}
        public BTeamHero(System.IO.BinaryReader reader) => Read(reader);

        /** 位置[1:大营][2:中军][3:前锋] */
        public int position{ get; set; }
        /** 唯一ID */
        public int uid{ get; set; }
        /** 兵力 */
        public int bingLi{ get; set; }
        /** 征兵信息(可为空) */
        public BTeamHeroZhengBing zhengBing{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.position);
            WriteInt(writer, this.uid);
            WriteInt(writer, this.bingLi);
            WriteBean(writer, this.zhengBing);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.position = ReadInt(reader);
            this.uid = ReadInt(reader);
            this.bingLi = ReadInt(reader);
            this.zhengBing = ReadBool(reader) ? new BTeamHeroZhengBing(reader) : null;
        }
    }
}