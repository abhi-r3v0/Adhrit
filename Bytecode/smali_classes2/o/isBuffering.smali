.class public abstract Lo/isBuffering;
.super Lo/resetKeepAlive;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lo/isBuffering<",
        "TS;>;>",
        "Lo/resetKeepAlive<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static synthetic ICustomTabsCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lo/isBuffering;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/isBuffering;->ICustomTabsCallback:Z

    return-void
.end method

.method public constructor <init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lo/resetKeepAlive;-><init>(Lo/pruneCache;Lo/deleteTrackedQuery;)V

    return-void
.end method

.method public static onPostMessage(Lo/resetKeepAlive$onPostMessage;Lo/pruneCache;)Lo/resetKeepAlive;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/resetKeepAlive<",
            "TT;>;>(",
            "Lo/resetKeepAlive$onPostMessage<",
            "TT;>;",
            "Lo/pruneCache;",
            ")TT;"
        }
    .end annotation

    .line 50
    sget-object v0, Lo/deleteTrackedQuery;->onPostMessage:Lo/deleteTrackedQuery;

    .line 1063
    sget-object v1, Lo/handleIncomingFrame;->onMessageChannelReady:Lo/deleteTrackedQuery$onMessageChannelReady;

    sget-object v2, Lo/handleIncomingFrame$onPostMessage;->extraCallback:Lo/handleIncomingFrame$onPostMessage;

    .line 1064
    invoke-virtual {v0, v1, v2}, Lo/deleteTrackedQuery;->onPostMessage(Lo/deleteTrackedQuery$onMessageChannelReady;Ljava/lang/Object;)Lo/deleteTrackedQuery;

    move-result-object v0

    .line 1063
    invoke-interface {p0, p1, v0}, Lo/resetKeepAlive$onPostMessage;->onNavigationEvent(Lo/pruneCache;Lo/deleteTrackedQuery;)Lo/resetKeepAlive;

    move-result-object p0

    return-object p0
.end method
