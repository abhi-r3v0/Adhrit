.class final Lo/getPerceivedValueCurrency;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getFarmTitle$onMessageChannelReady;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 2
    invoke-static {}, Lo/access$202;->onMessageChannelReady()Lo/dM;

    move-result-object v0

    sget v1, Lo/isNotificationSoundEnabled;->onPostMessage:I

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lo/dM;->onMessageChannelReady(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
