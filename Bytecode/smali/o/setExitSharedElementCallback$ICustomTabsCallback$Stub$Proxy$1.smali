.class final Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;->onMessageChannelReady:Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1384
    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;->onMessageChannelReady:Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;

    iget-object v0, v0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 2038
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1384
    :goto_0
    check-cast v0, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 3026
    iget-object v2, v0, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    .line 1384
    :cond_1
    sget-object v0, Lo/onPrepareOptionsMenu$onMessageChannelReady;->onNavigationEvent:Lo/onPrepareOptionsMenu$onMessageChannelReady;

    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;->onMessageChannelReady:Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;

    iget-object v0, v0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1386
    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;->onMessageChannelReady:Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;

    iget-object v0, v0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 57
    :cond_2
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
