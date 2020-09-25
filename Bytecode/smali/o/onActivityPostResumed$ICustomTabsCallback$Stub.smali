.class public final Lo/onActivityPostResumed$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostResumed;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/cancelLoadInBackground;",
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
        "it",
        "Lcom/dreamplug/fabrik/ui/control/CredProtectResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onMessageChannelReady:Lo/onActivityPostResumed;


# direct methods
.method constructor <init>(Lo/onActivityPostResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 52
    check-cast p1, Lo/cancelLoadInBackground;

    .line 1089
    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-static {v0}, Lo/onActivityPostResumed;->onNavigationEvent(Lo/onActivityPostResumed;)Lo/onDestroyView;

    move-result-object v0

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1090
    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    const/4 v1, 0x0

    const-string v2, "link_email_successful"

    const/4 v3, 0x6

    invoke-static {v0, v2, v1, v1, v3}, Lo/onActivityPostResumed;->extraCallback(Lo/onActivityPostResumed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    move-result-object v0

    .line 2012
    sget-object v2, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1091
    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lo/onActivityPostResumed;->onPostMessage(Lo/onActivityPostResumed;Z)V

    .line 2086
    iget-boolean v0, p1, Lo/cancelLoadInBackground;->extraCallback:Z

    const-string v3, "lifecycle"

    if-eqz v0, :cond_1

    .line 1093
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-static {p1}, Lo/onActivityPostResumed;->extraCallback(Lo/onActivityPostResumed;)Lo/onChildrenLoaded;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;

    invoke-direct {v0, p0}, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;-><init>(Lo/onActivityPostResumed$ICustomTabsCallback$Stub;)V

    check-cast v0, Lo/getContentPaddingRight;

    invoke-static {p1, v0}, Lo/getCardBackgroundColor;->ICustomTabsCallback(Landroid/view/View;Lo/getContentPaddingRight;)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lo/onActivityPostResumed;->asInterface()V

    .line 1116
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaView:I

    invoke-virtual {p1, v0}, Lo/onActivityPostResumed;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1, v1}, Lo/getCardBackgroundColor;->ICustomTabsCallback(Landroid/view/View;Lo/getContentPaddingRight;)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lo/onActivityPostResumed;->asBinder()V

    .line 1117
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bottomTextLayout:I

    invoke-virtual {p1, v0}, Lo/onActivityPostResumed;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string v0, "bottomTextLayout"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    new-instance v0, Lo/requireView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomText:I

    invoke-virtual {p1, v1}, Lo/onActivityPostResumed;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "bottomText"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/requireView;-><init>(Landroid/widget/TextView;)V

    .line 3079
    iput-object v0, p1, Lo/onActivityPostResumed;->extraCallback:Lo/requireView;

    .line 1119
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    .line 4079
    iget-object p1, p1, Lo/onActivityPostResumed;->extraCallback:Lo/requireView;

    if-eqz p1, :cond_0

    .line 5022
    iget-object v0, p1, Lo/requireView;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 1120
    invoke-virtual {p1, v0}, Lo/requireView;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;)V

    const v0, 0x3f19999a    # 0.6f

    .line 6018
    iput v0, p1, Lo/requireView;->onNavigationEvent:F

    const-string v0, "reading statements"

    const-string v1, "generating category maps"

    const-string/jumbo v4, "setting up smart statements"

    const-string v5, "finalizing"

    .line 1125
    filled-new-array {v0, v1, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    .line 1122
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$asList"

    .line 6076
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 6129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0xbb8

    .line 1122
    invoke-virtual {p1, v0, v4, v5}, Lo/requireView;->onNavigationEvent(Ljava/util/List;J)V

    .line 1127
    :cond_0
    iget-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->bottomText:I

    invoke-virtual {p1, v0}, Lo/onActivityPostResumed;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x2ee0

    new-instance v3, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$3;

    invoke-direct {v3, p0}, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$3;-><init>(Lo/onActivityPostResumed$ICustomTabsCallback$Stub;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void

    .line 1131
    :cond_1
    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    const/4 v4, 0x1

    new-array v5, v4, [Lo/addWrite;

    .line 8086
    iget-object v6, p1, Lo/cancelLoadInBackground;->ICustomTabsCallback:Ljava/lang/String;

    .line 9043
    new-instance v7, Lo/addWrite;

    const-string v8, "error_details"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v2

    const-string v6, "pairs"

    .line 1131
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance v6, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const/4 v5, 0x2

    const-string v7, "link_email_unsuccessful"

    .line 1131
    invoke-static {v0, v7, v1, v6, v5}, Lo/onActivityPostResumed;->extraCallback(Lo/onActivityPostResumed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    move-result-object v0

    .line 10012
    sget-object v5, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10086
    iget-object p1, p1, Lo/cancelLoadInBackground;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1133
    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v2, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1388
    new-instance v5, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v5}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1389
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 10212
    invoke-virtual {v1, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1134
    iget-object v1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-static {v1}, Lo/onActivityPostResumed;->onPostMessage(Lo/onActivityPostResumed;)Lo/onActivityResult;

    move-result-object v1

    iget-object v6, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    .line 11031
    invoke-static {v6, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "text"

    invoke-static {p1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11032
    sget v7, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {v1, v6, p1, v2, v7}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1391
    iput-boolean v4, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 1392
    :cond_3
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_4

    .line 1393
    new-instance v1, Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-direct {v1, v0, v3, p1, p0}, Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;Lo/onActivityPostResumed$ICustomTabsCallback$Stub;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1394
    iget-object p1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1396
    :cond_4
    :goto_1
    new-instance p1, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$extraCallback;

    invoke-direct {p1, v5, v0}, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_5
    return-void
.end method
