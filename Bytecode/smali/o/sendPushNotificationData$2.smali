.class final Lo/sendPushNotificationData$2;
.super Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendPushNotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Ljava/util/concurrent/Future;

.field private synthetic onPostMessage:Lo/enableFacebookDeferredApplinks$extraCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lo/enableFacebookDeferredApplinks$extraCallback;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lo/sendPushNotificationData$2;->onNavigationEvent:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lo/sendPushNotificationData$2;->onPostMessage:Lo/enableFacebookDeferredApplinks$extraCallback;

    invoke-direct {p0}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 123
    iget-object v0, p0, Lo/sendPushNotificationData$2;->onNavigationEvent:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lo/sendPushNotificationData$2;->onPostMessage:Lo/enableFacebookDeferredApplinks$extraCallback;

    invoke-interface {v0}, Lo/enableFacebookDeferredApplinks$extraCallback;->extraCallback()V

    :cond_0
    return-void
.end method
