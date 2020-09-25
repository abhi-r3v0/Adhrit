.class public final Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback;->onPostMessage()V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/setEnterSharedElementCallback;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setEnterSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onPostMessage:Lo/setEnterSharedElementCallback;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onPostMessage:Lo/setEnterSharedElementCallback;

    .line 1044
    iget-boolean p1, p1, Lo/setEnterSharedElementCallback;->ICustomTabsCallback:Z

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array v1, p1, [Lo/addWrite;

    const/4 v2, 0x0

    .line 55
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService$Stub:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 55
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "wa_enabled"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    .line 56
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onPostMessage:Lo/setEnterSharedElementCallback;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->whatsappConsentCheckBox:I

    invoke-virtual {v2, v3}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const-string/jumbo v3, "whatsappConsentCheckBox"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "wa_selected"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v0

    const/4 v2, 0x2

    .line 57
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onPostMessage:Lo/setEnterSharedElementCallback;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->limitConsentCheckBox:I

    invoke-virtual {v3, v4}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const-string v4, "limitConsentCheckBox"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "agree_selected"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 55
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "ad_setup_auth_screen_dismiss"

    .line 55
    invoke-static {p1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->onNavigationEvent(Lo/setEnterSharedElementCallback;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$dismissInternal$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
