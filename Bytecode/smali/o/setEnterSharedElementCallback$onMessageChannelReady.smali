.class public final Lo/setEnterSharedElementCallback$onMessageChannelReady;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onMessageChannelReady:Lo/setEnterSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setEnterSharedElementCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 0

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 5

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 235
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {v1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v1

    .line 1251
    iget-object v1, v1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 172
    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    if-ne v1, v3, :cond_1

    .line 173
    iget-object p2, p0, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {p2}, Lo/setEnterSharedElementCallback;->onPostMessage(Lo/setEnterSharedElementCallback;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 175
    :cond_2
    iget-object p2, p0, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {p2}, Lo/setEnterSharedElementCallback;->onMessageChannelReady(Lo/setEnterSharedElementCallback;)V

    .line 238
    :cond_3
    :goto_0
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_5

    .line 240
    new-instance v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setEnterSharedElementCallback$onMessageChannelReady;I)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 241
    iget-object p2, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 243
    :cond_5
    :goto_1
    new-instance p2, Lo/setEnterSharedElementCallback$onMessageChannelReady$extraCallback;

    invoke-direct {p2, v2, p1}, Lo/setEnterSharedElementCallback$onMessageChannelReady$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
