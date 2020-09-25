.class public final Lo/getClientSdkVersion;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Lo/serverCacheEstimatedSizeInBytes;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Lo/findKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "service-config"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 39
    sput-object v0, Lo/getClientSdkVersion;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 2149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "io.grpc.grpclb.lbAddrs"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 49
    sput-object v0, Lo/getClientSdkVersion;->extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 3149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "io.grpc.grpclb.lbAddrAuthority"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 4149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "io.grpc.grpclb.lbProvidedBackend"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 5149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 76
    sput-object v0, Lo/getClientSdkVersion;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 6149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 85
    sput-object v0, Lo/getClientSdkVersion;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    return-void
.end method
