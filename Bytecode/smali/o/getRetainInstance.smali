.class public final Lo/getRetainInstance;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/sms/ServiceSmsSheet;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "()V",
        "intent",
        "Landroid/content/Intent;",
        "getIntent",
        "()Landroid/content/Intent;",
        "setIntent",
        "(Landroid/content/Intent;)V",
        "getLayoutResource",
        "",
        "onDismiss",
        "",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field extraCallback:Landroid/content/Intent;

.field private onNavigationEvent:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/getRetainInstance;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 1

    const-string/jumbo v0, "service_sms_sheet_dismissed"

    .line 38
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 39
    invoke-super {p0}, Lo/findLastVisibleItemPositions;->g_()V

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 1000
    iget-object v0, p0, Lo/getRetainInstance;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getRetainInstance;->onNavigationEvent:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getRetainInstance;->onNavigationEvent:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getRetainInstance;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/getRetainInstance;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e030c

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 20
    new-instance p1, Lo/setUserVisibleHint;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object p2

    const-string v0, "requireActivity()"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lo/setUserVisibleHint;-><init>(Lo/onSessionEvent;)V

    new-instance p2, Lo/getRetainInstance$onPostMessage;

    invoke-direct {p2, p0}, Lo/getRetainInstance$onPostMessage;-><init>(Lo/getRetainInstance;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-virtual {p1, p2}, Lo/setUserVisibleHint;->ICustomTabsCallback(Lo/onDisconnectSetValue;)V

    const-string/jumbo p1, "service_sms_sheet_shown"

    .line 28
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 29
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->buttonPositive:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string p2, "buttonPositive"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/getRetainInstance$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/getRetainInstance$ICustomTabsCallback;-><init>(Lo/getRetainInstance;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
