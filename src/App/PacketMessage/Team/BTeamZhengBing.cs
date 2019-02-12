using Util;

namespace App.PacketMessage.Team
{
    /**
     * Created by FreeMarker. DO NOT EDIT!!!
     * 征兵信息
     */
    public class BTeamZhengBing : Bean {

        public BTeamZhengBing() {}
        public BTeamZhengBing(System.IO.BinaryReader reader) => Read(reader);

        /** 武将卡唯一ID */
        public int heroUID{ get; set; }
        /** 征兵兵力 */
        public int zhengBingBingLi{ get; set; }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteInt(writer, this.heroUID);
            WriteInt(writer, this.zhengBingBingLi);
        }

        public override void Read(System.IO.BinaryReader reader)
        {
            this.heroUID = ReadInt(reader);
            this.zhengBingBingLi = ReadInt(reader);
        }
    }
}