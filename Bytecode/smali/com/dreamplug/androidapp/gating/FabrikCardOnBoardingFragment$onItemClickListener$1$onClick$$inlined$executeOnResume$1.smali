.class public final Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycle$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
.field private synthetic ICustomTabsCallback:Lo/recycle$ICustomTabsCallback;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle$ICustomTabsCallback;Ljava/lang/String;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/recycle$ICustomTabsCallback;

    iput-object p4, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/StaggeredGridLayoutManager;

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
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

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
    .locals 14

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    const-string v0, "need_help"

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/recycle$ICustomTabsCallback;

    iget-object p1, p1, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->asInterface(Lo/recycle;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "source"

    const-string v1, "onboarding_verify_card_list"

    .line 56
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onboarding_cv_need_help"

    .line 55
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 58
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/recycle$ICustomTabsCallback;

    iget-object p1, p1, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 1000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 59
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1304ef

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "support/articles/43000559833"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 61
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v7, Lo/setTitleMarginStart$extraCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const-string v1, "SUPPORT_VIEW_FRAGMENT"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    new-instance v0, Lo/getThumbTintList;

    invoke-direct {v0, v7}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/StaggeredGridLayoutManager;

    instance-of p1, p1, Lo/getDecoratedRight;

    if-eqz p1, :cond_5

    .line 69
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x789e0c

    const-string v2, "activate_cta_click"

    const-string v3, "card_tap"

    if-eq v0, v1, :cond_2

    const v1, 0x37675a4d

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    :goto_0
    const-string v2, "NA"

    :goto_1
    move-object v6, v2

    .line 76
    :goto_2
    new-instance v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lo/getDecoratedRight;

    .line 1034
    iget-object p1, p1, Lo/getDecoratedRight;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz p1, :cond_4

    .line 76
    invoke-direct {v4, p1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    .line 78
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/recycle$ICustomTabsCallback;

    iget-object p1, p1, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 2000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 78
    new-instance v0, Lo/getThumbTintList;

    new-instance v1, Lo/setTitleMarginStart$extraCallback;

    const/4 v9, 0x0

    new-instance v10, Lo/setTitleMarginBottom$extraCallback;

    iget-object v2, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/recycle$ICustomTabsCallback;

    iget-object v2, v2, Lo/recycle$ICustomTabsCallback;->onNavigationEvent:Lo/recycle;

    invoke-static {v2}, Lo/recycle;->asBinder(Lo/recycle;)Lo/getBottomDecorationHeight;

    move-result-object v2

    .line 2027
    iget v7, v2, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    const/4 v8, 0x4

    const-string/jumbo v5, "verify_cards"

    move-object v3, v10

    .line 78
    invoke-direct/range {v3 .. v8}, Lo/setTitleMarginBottom$extraCallback;-><init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1a

    const-string v8, "NEW_VERIFY_CARD_FRAGMENT"

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v0, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_3

    .line 76
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.control.CardDetails"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
