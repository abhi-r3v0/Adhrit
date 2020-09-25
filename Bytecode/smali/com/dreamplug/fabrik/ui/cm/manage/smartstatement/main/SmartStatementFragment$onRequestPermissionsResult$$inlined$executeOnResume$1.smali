.class public final Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSupportFragmentManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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
.field private synthetic ICustomTabsCallback:[I

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/getSupportFragmentManager;

.field private synthetic onNavigationEvent:[Ljava/lang/String;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getSupportFragmentManager;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getSupportFragmentManager;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:[I

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:[Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:[I

    array-length p1, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:[I

    aget p1, p1, v1

    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->onRelationshipValidationResult(Lo/getSupportFragmentManager;)V

    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getSupportFragmentManager;

    invoke-static {p1}, Lo/getSupportFragmentManager;->warmup(Lo/getSupportFragmentManager;)Lo/onActivityResult;

    move-result-object p1

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getSupportFragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f1303d4

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context"

    .line 1031
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "text"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    sget v4, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p1, v2, v3, v1, v4}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 58
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getSupportFragmentManager;

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1, v1}, Lo/getSupportFragmentManager;->extraCallback(Lo/getSupportFragmentManager;Z)V

    .line 27
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/main/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
