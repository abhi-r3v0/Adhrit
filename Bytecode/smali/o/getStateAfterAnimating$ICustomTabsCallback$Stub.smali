.class public final Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getStateAfterAnimating;
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
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onMessageChannelReady:Lo/getStateAfterAnimating;


# direct methods
.method public constructor <init>(Lo/getStateAfterAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Lo/cancelLoadInBackground;

    .line 52
    iget-object v0, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->getInterfaceDescriptor:Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 53
    iget-object v0, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getStateAfterAnimating;->onPostMessage(Lo/getStateAfterAnimating;Z)V

    .line 1086
    iget-boolean v0, p1, Lo/cancelLoadInBackground;->extraCallback:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    const/4 v0, 0x6

    const-string v1, "link_email_successful"

    invoke-static {p1, v1, v2, v0}, Lo/getStateAfterAnimating;->onMessageChannelReady(Lo/getStateAfterAnimating;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    move-result-object p1

    .line 2012
    sget-object v0, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    iget-object p1, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-static {p1}, Lo/getStateAfterAnimating;->extraCallback(Lo/getStateAfterAnimating;)V

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->newSession:Lo/onChildrenLoaded;

    const-string v3, "binding.mainLayout"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v3, "$this$visible"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->onNavigationEvent:Landroid/widget/FrameLayout;

    const-string v4, "binding.backButton"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    const/4 v3, 0x1

    new-array v4, v3, [Lo/addWrite;

    .line 4086
    iget-object v5, p1, Lo/cancelLoadInBackground;->ICustomTabsCallback:Ljava/lang/String;

    .line 5043
    new-instance v6, Lo/addWrite;

    const-string v7, "error_details"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v1

    const-string v5, "pairs"

    .line 60
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const/4 v4, 0x2

    const-string v6, "link_email_unsuccessful"

    .line 60
    invoke-static {v0, v6, v5, v4}, Lo/getStateAfterAnimating;->onMessageChannelReady(Lo/getStateAfterAnimating;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    move-result-object v0

    .line 6012
    sget-object v4, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6086
    iget-object p1, p1, Lo/cancelLoadInBackground;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 62
    iget-object v0, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v4, "lifecycle"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v4}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v1, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 64
    new-instance v5, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v5}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v2, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 6212
    invoke-virtual {v2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-static {v2}, Lo/getStateAfterAnimating;->onTransact(Lo/getStateAfterAnimating;)Lo/onActivityResult;

    move-result-object v2

    iget-object v6, p0, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    .line 7031
    invoke-static {v6, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "text"

    invoke-static {p1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7032
    sget v7, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {v2, v6, p1, v1, v7}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 69
    iput-boolean v3, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_3

    .line 71
    new-instance v1, Lcom/dreamplug/fabrik/ui/cm/credprotect/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;

    invoke-direct {v1, v0, v4, p1, p0}, Lcom/dreamplug/fabrik/ui/cm/credprotect/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;Lo/getStateAfterAnimating$ICustomTabsCallback$Stub;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 72
    iget-object p1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 74
    :cond_3
    :goto_1
    new-instance p1, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub$ICustomTabsCallback;

    invoke-direct {p1, v5, v0}, Lo/getStateAfterAnimating$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_4
    return-void
.end method
