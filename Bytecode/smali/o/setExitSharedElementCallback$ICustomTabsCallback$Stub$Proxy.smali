.class final Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getSharedElementEnterTransition$onNavigationEvent;",
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
        "state",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitViewModel$AddAccountStateUiModel;",
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
.field final synthetic ICustomTabsCallback:Lo/setExitSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 57
    check-cast p1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    .line 1336
    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v0

    iget-object v1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    const v2, 0x7f13038d

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 2026
    iget-object p1, p1, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    .line 1338
    sget-object v0, Lo/onPrepareOptionsMenu$ICustomTabsCallback;->extraCallback:Lo/onPrepareOptionsMenu$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "interpolator"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1339
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onTransact(Lo/setExitSharedElementCallback;)V

    .line 1340
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1341
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 2044
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 1341
    :goto_0
    check-cast p1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz p1, :cond_1

    .line 3026
    iget-object p1, p1, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 1341
    :goto_1
    sget-object v0, Lo/onPrepareOptionsMenu$onNavigationEvent;->onPostMessage:Lo/onPrepareOptionsMenu$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1342
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsCallback$Stub(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onPostMessage(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1343
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsCallback$Stub$Proxy(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1345
    :cond_4
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a

    .line 1348
    :cond_5
    sget-object v0, Lo/onPrepareOptionsMenu$onNavigationEvent;->onPostMessage:Lo/onPrepareOptionsMenu$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0x4b0

    const-string v5, "lifecycle"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_10

    .line 1349
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    const-string v0, "ad_setup_add_bank_ifsc_screen_load"

    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 1350
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1351
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onRelationshipValidationResult(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1352
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1353
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$5;

    invoke-direct {v5, p0}, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$5;-><init>(Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {p1, v0, v3, v4, v5}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1360
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object p1

    .line 1361
    sget-object v0, Lo/requireContext;->onMessageChannelReady:Lo/requireContext;

    const-string v0, "ifsc"

    invoke-static {v0, p1}, Lo/requireContext;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1362
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    goto :goto_4

    .line 1364
    :cond_6
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1366
    :goto_4
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onTransact(Lo/setExitSharedElementCallback;)V

    .line 1367
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 3044
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_7

    goto :goto_5

    :cond_7
    move-object p1, v2

    .line 1367
    :goto_5
    check-cast p1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz p1, :cond_8

    .line 4026
    iget-object p1, p1, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    goto :goto_6

    :cond_8
    move-object p1, v2

    .line 1367
    :goto_6
    sget-object v0, Lo/onPrepareOptionsMenu$ICustomTabsCallback;->extraCallback:Lo/onPrepareOptionsMenu$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1368
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsCallback$Stub$Proxy(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->extraCallback(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object v0, v2

    :goto_7
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onPostMessage(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1369
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsCallback$Stub(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_8

    :cond_a
    move-object v0, v2

    :goto_8
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    goto/16 :goto_1a

    .line 1370
    :cond_b
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 4044
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 4320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_c

    goto :goto_9

    :cond_c
    move-object p1, v2

    .line 1370
    :goto_9
    check-cast p1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz p1, :cond_d

    .line 5026
    iget-object p1, p1, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    goto :goto_a

    :cond_d
    move-object p1, v2

    .line 1370
    :goto_a
    sget-object v0, Lo/onPrepareOptionsMenu$onMessageChannelReady;->onNavigationEvent:Lo/onPrepareOptionsMenu$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1371
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsService(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_b

    :cond_e
    move-object v0, v2

    :goto_b
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onPostMessage(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1372
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsCallback$Stub(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_c

    :cond_f
    move-object v0, v2

    :goto_c
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    goto/16 :goto_1a

    .line 1376
    :cond_10
    sget-object v0, Lo/onPrepareOptionsMenu$onMessageChannelReady;->onNavigationEvent:Lo/onPrepareOptionsMenu$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v8, 0x7f130039

    if-eqz v0, :cond_1d

    .line 1377
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v6, [Lo/addWrite;

    .line 1378
    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 5031
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->onMessageChannelReady:Lo/onDetach$asInterface;

    if-eqz v0, :cond_11

    .line 5118
    iget-boolean v0, v0, Lo/onDetach$asInterface;->onTransact:Z

    if-ne v0, v6, :cond_11

    const-string/jumbo v0, "upi"

    goto :goto_d

    :cond_11
    const-string v0, "other"

    .line 6043
    :goto_d
    new-instance v9, Lo/addWrite;

    const-string v10, "account_type"

    invoke-direct {v9, v10, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, p1, v7

    const-string v0, "pairs"

    .line 1378
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "ad_setup_add_bank_actn_screen_load"

    .line 1378
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1379
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->getInterfaceDescriptor(Lo/setExitSharedElementCallback;)Lo/onDetach$ICustomTabsCallback;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 7103
    iget-object p1, p1, Lo/onDetach$ICustomTabsCallback;->onPostMessage:Lo/onDetach$asInterface;

    goto :goto_e

    :cond_12
    move-object p1, v2

    :goto_e
    if-eqz p1, :cond_13

    .line 1380
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    :cond_13
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1383
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;

    invoke-direct {v5, p0}, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$1;-><init>(Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {p1, v0, v3, v4, v5}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1389
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onRelationshipValidationResult(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1390
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1391
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v6, :cond_14

    .line 1392
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    goto :goto_f

    .line 1394
    :cond_14
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1396
    :goto_f
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onTransact(Lo/setExitSharedElementCallback;)V

    .line 1397
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 8044
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 8320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_15

    goto :goto_10

    :cond_15
    move-object p1, v2

    .line 1397
    :goto_10
    check-cast p1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz p1, :cond_16

    .line 9026
    iget-object p1, p1, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    goto :goto_11

    :cond_16
    move-object p1, v2

    .line 1397
    :goto_11
    sget-object v0, Lo/onPrepareOptionsMenu$extraCallback;->ICustomTabsCallback:Lo/onPrepareOptionsMenu$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1398
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->warmup(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_12

    :cond_17
    move-object v0, v2

    :goto_12
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onPostMessage(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1399
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsService(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_13

    :cond_18
    move-object v0, v2

    :goto_13
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    goto/16 :goto_1a

    .line 1401
    :cond_19
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsService(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_14

    :cond_1a
    move-object v0, v2

    :goto_14
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1402
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsCallback$Stub(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->extraCallback(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_15

    :cond_1b
    move-object v0, v2

    :goto_15
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onPostMessage(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    goto/16 :goto_1a

    .line 1391
    :cond_1c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1406
    :cond_1d
    sget-object v0, Lo/onPrepareOptionsMenu$extraCallback;->ICustomTabsCallback:Lo/onPrepareOptionsMenu$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1407
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    const-string v0, "ad_setup_add_bank_re_actn_screen_load"

    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 1410
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asInterface(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1411
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onRelationshipValidationResult(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1412
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onRelationshipValidationResult(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$3;

    invoke-direct {v5, p0}, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy$3;-><init>(Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {p1, v0, v3, v4, v5}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1418
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->asBinder(Lo/setExitSharedElementCallback;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1419
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1420
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onTransact(Lo/setExitSharedElementCallback;)V

    .line 1421
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 9044
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 9320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_1e

    goto :goto_16

    :cond_1e
    move-object p1, v2

    .line 1421
    :goto_16
    check-cast p1, Lo/getSharedElementEnterTransition$onNavigationEvent;

    if-eqz p1, :cond_1f

    .line 10026
    iget-object p1, p1, Lo/getSharedElementEnterTransition$onNavigationEvent;->onMessageChannelReady:Lo/onPrepareOptionsMenu;

    goto :goto_17

    :cond_1f
    move-object p1, v2

    .line 1421
    :goto_17
    sget-object v0, Lo/onPrepareOptionsMenu$onMessageChannelReady;->onNavigationEvent:Lo/onPrepareOptionsMenu$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1422
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->ICustomTabsService(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->extraCallback(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_18

    :cond_20
    move-object v0, v2

    :goto_18
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onPostMessage(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1423
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v3, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v3}, Lo/setExitSharedElementCallback;->warmup(Lo/setExitSharedElementCallback;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v4}, Lo/setExitSharedElementCallback;->newSession(Lo/setExitSharedElementCallback;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_19

    :cond_21
    move-object v0, v2

    :goto_19
    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Landroid/view/animation/Animation;)V

    .line 1428
    :cond_22
    :goto_1a
    iget-object p1, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object p1

    .line 10042
    iget-object p1, p1, Lo/getSharedElementEnterTransition;->onTransact:Lo/setActive;

    .line 1428
    iget-object v0, p0, Lo/setExitSharedElementCallback$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 11038
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->asInterface:Lo/setActive;

    .line 11320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_23

    move-object v2, v0

    .line 1428
    :cond_23
    invoke-virtual {p1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
