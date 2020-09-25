.class final Lo/set$default;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private extraCallback:J

.field private onNavigationEvent:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/set$default;->onNavigationEvent:J

    iput-wide v0, p0, Lo/set$default;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    iget-wide v0, p0, Lo/set$default;->extraCallback:J

    return-wide v0
.end method

.method public final onMessageChannelReady()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lo/set$default;->onNavigationEvent:J

    const-string v3, "topen"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lo/set$default;->extraCallback:J

    const-string v3, "tclose"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/set$default;->extraCallback:J

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/set$default;->onNavigationEvent:J

    return-void
.end method
