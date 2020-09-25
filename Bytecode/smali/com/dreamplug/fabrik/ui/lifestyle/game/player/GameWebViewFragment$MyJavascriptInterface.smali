.class public final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyJavascriptInterface"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0087\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0007J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\u0018\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0006H\u0007J\u0008\u0010\u001b\u001a\u00020\rH\u0007J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0019H\u0002J\u001a\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u0007Ro\u0010\u0003\u001aV\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006 \u0007*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\u0005 \u0007**\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006 \u0007*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;",
        "",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V",
        "adapter",
        "Lcom/squareup/moshi/JsonAdapter;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "getAdapter",
        "()Lcom/squareup/moshi/JsonAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "gameEvent",
        "",
        "value",
        "getConfig",
        "getRefreshRate",
        "",
        "sampleToast",
        "a",
        "scoreChanged",
        "delta",
        "",
        "newScore",
        "shouldInterrupt",
        "",
        "action",
        "showNavigationBar",
        "show",
        "trackEventJson",
        "eventName",
        "eventParams",
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
.field private final adapter$delegate:Lo/isSameListener;

.field final synthetic this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    sget-object p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface$extraCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface$extraCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 437
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->adapter$delegate:Lo/isSameListener;

    return-void
.end method

.method private final getAdapter()Lo/JniNativeApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/JniNativeApi<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->adapter$delegate:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/JniNativeApi;

    return-object v0
.end method

.method private final showNavigationBar(Z)V
    .locals 1

    .line 529
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    instance-of p1, p1, Lo/notifyDataSetChanged;

    if-eqz p1, :cond_1

    .line 530
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 591
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/hasObservers;

    invoke-virtual {v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/hasObservers;

    const/4 v0, 0x0

    .line 10068
    iput-boolean v0, p1, Lo/hasObservers;->onPostMessage:Z

    .line 10069
    invoke-virtual {p1}, Lo/hasObservers;->onPostMessage()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final gameEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v0

    new-instance v1, Lo/getTotalSpaceChange;

    invoke-direct {v1, p1}, Lo/getTotalSpaceChange;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/computeDistancePerChild;

    invoke-virtual {v0, v1}, Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gameEvent() called with: value = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameWebViewFragmentq"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getConfig()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v0

    .line 8025
    iget-object v0, v0, Lo/findTargetSnapPosition;->ICustomTabsCallback:Lo/setActive;

    .line 8320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 507
    :goto_0
    check-cast v0, Lo/remove;

    if-eqz v0, :cond_1

    .line 9018
    iget-object v2, v0, Lo/remove;->getInterfaceDescriptor:Ljava/lang/String;

    :cond_1
    const-string v0, "GameWebViewFragmentq"

    .line 508
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getConfig() returned:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "tag"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9065
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getRefreshRate()F
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "(context?.getSystemServi\u2026anager?)!!.defaultDisplay"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const-string v1, "GameWebViewFragmentq"

    .line 519
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getRefreshRate() returned:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tag"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10065
    invoke-static {v1, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final sampleToast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final scoreChanged(II)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scoreChanged() called with: delta = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], newScore = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameWebViewFragmentq"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object p1

    new-instance v0, Lo/OrientationHelper;

    invoke-direct {v0, p2}, Lo/OrientationHelper;-><init>(I)V

    check-cast v0, Lo/computeDistancePerChild;

    invoke-virtual {p1, v0}, Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V

    return-void
.end method

.method public final shouldInterrupt(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldInterrupt() called with action :["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    const-string v2, "GameWebViewFragmentq"

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5065
    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v0

    new-instance v3, Lo/getDecoratedEnd;

    invoke-direct {v3, p1}, Lo/getDecoratedEnd;-><init>(Ljava/lang/String;)V

    check-cast v3, Lo/computeDistancePerChild;

    invoke-virtual {v0, v3}, Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V

    .line 497
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object p1

    .line 6025
    iget-object p1, p1, Lo/findTargetSnapPosition;->ICustomTabsCallback:Lo/setActive;

    .line 6320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 497
    :goto_0
    check-cast p1, Lo/remove;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7015
    iget-boolean p1, p1, Lo/remove;->asBinder:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 498
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "shouldInterrupt() returned:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7065
    invoke-static {v2, v3}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final showNavigationBar()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    .line 525
    invoke-direct {p0, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->showNavigationBar(Z)V

    return-void
.end method

.method public final trackEventJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "trackEventJson() called with: eventName = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], eventParams = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameWebViewFragmentq"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 456
    new-instance v0, Lo/writeStringNoTag;

    invoke-direct {v0}, Lo/writeStringNoTag;-><init>()V

    new-instance v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface$onPostMessage;

    invoke-direct {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface$onPostMessage;-><init>()V

    .line 2101
    iget-object v1, v1, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 2845
    :cond_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {v0, v2, v1}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 456
    :goto_0
    check-cast p2, Ljava/util/HashMap;

    .line 457
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v0

    invoke-virtual {v0}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 459
    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 457
    :cond_1
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 463
    :cond_2
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$MyJavascriptInterface;->this$0:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object p2

    invoke-virtual {p2}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
