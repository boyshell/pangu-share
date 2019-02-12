using App.PacketMessage.Hero;

namespace App.PacketHandler.Hero
{

    public class ResHeroZhuanHuaErrorPacketHandler : Network.PacketHandler {

        // 武将转化
        public void Exec(Network.PacketMessage msg0)
        {
            ResHeroZhuanHuaErrorPacketMessage msg = (ResHeroZhuanHuaErrorPacketMessage)msg0;
            // todo
        }
    }
}