.class public final Lo/getGcmSenderId;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/getStorageBucket;

.field private static onPostMessage:Lo/getStorageBucket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    sget-object v0, Lo/setApplicationId;->ICustomTabsCallback:Lo/getStorageBucket;

    .line 4
    sput-object v0, Lo/getGcmSenderId;->onMessageChannelReady:Lo/getStorageBucket;

    sput-object v0, Lo/getGcmSenderId;->onPostMessage:Lo/getStorageBucket;

    return-void
.end method

.method static final synthetic onMessageChannelReady(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lo/getGcmSenderId;->onPostMessage:Lo/getStorageBucket;

    invoke-interface {v0, p0}, Lo/getStorageBucket;->extraCallback(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
