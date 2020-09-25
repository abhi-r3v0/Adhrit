.class final Lo/setSwitchMinWidth$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAppFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSwitchMinWidth;->onMessageChannelReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getAppFile<",
        "Lo/getIdToken;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "appUpdateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "kotlin.jvm.PlatformType",
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setSwitchMinWidth;


# direct methods
.method constructor <init>(Lo/setSwitchMinWidth;)V
    .locals 0

    iput-object p1, p0, Lo/setSwitchMinWidth$asInterface;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 8

    .line 29
    check-cast p1, Lo/getIdToken;

    .line 1096
    iget-object v0, p0, Lo/setSwitchMinWidth$asInterface;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 2061
    iput-object p1, v0, Lo/setSwitchMinWidth;->onMessageChannelReady:Lo/getIdToken;

    .line 1097
    iget-object p1, p0, Lo/setSwitchMinWidth$asInterface;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 2103
    iget-object v0, p1, Lo/setSwitchMinWidth;->onMessageChannelReady:Lo/getIdToken;

    if-eqz v0, :cond_13

    .line 3000
    iget-object v0, p1, Lo/setSwitchMinWidth;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isViewInvalid;

    .line 3012
    iget-object v0, v0, Lo/isViewInvalid;->onMessageChannelReady:Lo/MediaControllerCompatApi24$TransportControls;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2103
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2104
    iget-object v0, p1, Lo/setSwitchMinWidth;->onMessageChannelReady:Lo/getIdToken;

    const-string v1, "activity.lifecycle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo/getIdToken;->onPostMessage()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_a

    .line 2105
    iget-object v0, p1, Lo/setSwitchMinWidth;->onMessageChannelReady:Lo/getIdToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/getIdToken;->onMessageChannelReady()I

    move-result v0

    const/16 v5, 0xb

    if-ne v0, v5, :cond_1

    .line 2107
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->extraCallback()V

    return-void

    :cond_1
    const-string v0, "downloading"

    .line 4163
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4164
    new-instance v5, Lo/updateAllRemainingSpans;

    invoke-direct {v5}, Lo/updateAllRemainingSpans;-><init>()V

    iput-object v5, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    .line 4165
    :cond_2
    iget-object v5, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v5, :cond_3

    sget-object v6, Lo/setSwitchMinWidth$onNavigationEvent;->extraCallback:Lo/setSwitchMinWidth$onNavigationEvent;

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-virtual {v5, v6}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 4171
    :cond_3
    iget-object v5, p1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v5}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v5

    invoke-static {v5, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4274
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v3, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 4275
    new-instance v6, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v6}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v2, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 4276
    invoke-virtual {v5}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v7, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 5212
    invoke-virtual {v2, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_8

    .line 6059
    iget-object v2, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v2, :cond_5

    .line 7029
    iget-boolean v3, p1, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    xor-int/2addr v3, v4

    .line 4172
    invoke-virtual {v2, v3}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 8029
    :cond_5
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8059
    iget-object v2, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v2, :cond_6

    .line 9029
    iget-object v3, p1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    .line 4174
    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 10029
    iget-object v7, p1, Lo/setSwitchMinWidth;->extraCallback:Ljava/lang/String;

    .line 4174
    invoke-virtual {v2, v3, v7}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 4175
    :cond_6
    invoke-virtual {p1, v0}, Lo/setSwitchMinWidth;->onPostMessage(Ljava/lang/String;)V

    .line 4278
    :cond_7
    iput-boolean v4, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 4279
    :cond_8
    invoke-virtual {v5}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v3, :cond_9

    .line 4280
    new-instance v2, Lcom/dreamplug/androidapp/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;

    invoke-direct {v2, v5, v1, p1, v0}, Lcom/dreamplug/androidapp/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setSwitchMinWidth;Ljava/lang/String;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 4281
    iget-object p1, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v5, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 4283
    :cond_9
    :goto_1
    new-instance p1, Lo/setSwitchMinWidth$onPostMessage;

    invoke-direct {p1, v6, v5}, Lo/setSwitchMinWidth$onPostMessage;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    :cond_a
    const-string/jumbo v0, "update"

    .line 10182
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result v5

    if-nez v5, :cond_b

    .line 10183
    new-instance v5, Lo/updateAllRemainingSpans;

    invoke-direct {v5}, Lo/updateAllRemainingSpans;-><init>()V

    iput-object v5, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    .line 10184
    :cond_b
    iget-object v5, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v5, :cond_c

    new-instance v6, Lo/setSwitchMinWidth$asBinder;

    invoke-direct {v6, p1, v0}, Lo/setSwitchMinWidth$asBinder;-><init>(Lo/setSwitchMinWidth;Ljava/lang/String;)V

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-virtual {v5, v6}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 10208
    :cond_c
    iget-object v5, p1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v5}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v5

    invoke-static {v5, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10284
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v3, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 10285
    new-instance v6, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v6}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v2, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 10286
    invoke-virtual {v5}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v7, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 11212
    invoke-virtual {v2, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_d

    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_11

    .line 12059
    iget-object v2, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v2, :cond_e

    .line 13029
    iget-boolean v3, p1, Lo/setSwitchMinWidth;->ICustomTabsCallback:Z

    xor-int/2addr v3, v4

    .line 10209
    invoke-virtual {v2, v3}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 14029
    :cond_e
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result v2

    if-nez v2, :cond_10

    .line 14059
    iget-object v2, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v2, :cond_f

    .line 15029
    iget-object v3, p1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    .line 10211
    invoke-virtual {v3}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 16029
    iget-object v7, p1, Lo/setSwitchMinWidth;->extraCallback:Ljava/lang/String;

    .line 10211
    invoke-virtual {v2, v3, v7}, Lo/onAudioInfoChanged;->onMessageChannelReady(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 10212
    :cond_f
    invoke-virtual {p1, v0}, Lo/setSwitchMinWidth;->onPostMessage(Ljava/lang/String;)V

    .line 10288
    :cond_10
    iput-boolean v4, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 10289
    :cond_11
    invoke-virtual {v5}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v3, :cond_12

    .line 10290
    new-instance v2, Lcom/dreamplug/androidapp/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    invoke-direct {v2, v5, v1, p1, v0}, Lcom/dreamplug/androidapp/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setSwitchMinWidth;Ljava/lang/String;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 10291
    iget-object p1, v6, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v5, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 10293
    :cond_12
    :goto_2
    new-instance p1, Lo/setSwitchMinWidth$ICustomTabsCallback$Stub;

    invoke-direct {p1, v6, v5}, Lo/setSwitchMinWidth$ICustomTabsCallback$Stub;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_13
    return-void
.end method
