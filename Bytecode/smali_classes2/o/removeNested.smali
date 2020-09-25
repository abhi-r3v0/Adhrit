.class public final Lo/removeNested;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "remote-addr"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 39
    sput-object v0, Lo/removeNested;->extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 2149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "local-addr"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 47
    sput-object v0, Lo/removeNested;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 3149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "ssl-session"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 55
    sput-object v0, Lo/removeNested;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    return-void
.end method
