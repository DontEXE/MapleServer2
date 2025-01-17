﻿using MaplePacketLib2.Tools;
using MapleServer2.Constants;
using MapleServer2.Network;
using MapleServer2.Servers.Game;
using MapleServer2.Servers.Login;
using NLog;

namespace MapleServer2.PacketHandlers.Common
{
    public abstract class CommonPacketHandler : IPacketHandler<LoginSession>, IPacketHandler<GameSession>
    {
        public abstract RecvOp OpCode { get; }

        protected readonly Logger Logger = LogManager.GetCurrentClassLogger();

        protected CommonPacketHandler() { }

        public virtual void Handle(GameSession session, PacketReader packet)
        {
            HandleCommon(session, packet);
        }

        public virtual void Handle(LoginSession session, PacketReader packet)
        {
            HandleCommon(session, packet);
        }

        protected abstract void HandleCommon(Session session, PacketReader packet);

        public override string ToString() => $"[{OpCode}] Common.{GetType().Name}";
    }
}
