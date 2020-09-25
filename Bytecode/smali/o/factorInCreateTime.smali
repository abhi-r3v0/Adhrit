.class public final Lo/factorInCreateTime;
.super Lo/getAllExperimentsInAnalytics;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/factorInCreateTime$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016J\u001a\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00152\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/whatsapp/SecondaryPhoneSuccessFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "()V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/whatsapp/SecondaryPhoneSuccessFragment$Data;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/whatsapp/SecondaryPhoneSuccessFragment$Data;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "getTheme",
        "",
        "onBackPressed",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "onViewCreated",
        "view",
        "Data",
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
.field private extraCallback:Ljava/util/HashMap;

.field private final onMessageChannelReady:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 32
    new-instance v0, Lo/factorInCreateTime$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/factorInCreateTime$onNavigationEvent;-><init>(Lo/factorInCreateTime;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 32
    iput-object v1, p0, Lo/factorInCreateTime;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 65
    new-instance v0, Lo/factorInCreateTime$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/factorInCreateTime$onMessageChannelReady;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 72
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 63
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()I
    .locals 1

    const v0, 0x7f140105

    return v0
.end method

.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/factorInCreateTime;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/factorInCreateTime;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/factorInCreateTime;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/factorInCreateTime;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SecondaryPhoneSuccessFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0279

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 5000
    iget-object v0, p0, Lo/factorInCreateTime;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 76
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onStart()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/factorInCreateTime$ICustomTabsCallback;

    invoke-direct {v2, p0}, Lo/factorInCreateTime$ICustomTabsCallback;-><init>(Lo/factorInCreateTime;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0xc8

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 80
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    sget-object v1, Lo/factorInCreateTime$onPostMessage;->onNavigationEvent:Lo/factorInCreateTime$onPostMessage;

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2000
    iget-object p1, p0, Lo/factorInCreateTime;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/factorInCreateTime$extraCallback;

    if-eqz p1, :cond_0

    .line 2089
    iget-object p1, p1, Lo/factorInCreateTime$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p2}, Lo/factorInCreateTime;->extraCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string v0, "ctaButton"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/factorInCreateTime$asInterface;

    invoke-direct {v0, p0}, Lo/factorInCreateTime$asInterface;-><init>(Lo/factorInCreateTime;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 55
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    new-instance v3, Lo/factorInCreateTime$onRelationshipValidationResult;

    invoke-direct {v3, p0}, Lo/factorInCreateTime$onRelationshipValidationResult;-><init>(Lo/factorInCreateTime;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p2, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    const/4 p2, 0x1

    new-array v0, p2, [Lo/addWrite;

    const/4 v1, 0x0

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const-string p1, "pairs"

    .line 59
    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p2, "sec_phone_success_screen_open"

    .line 59
    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
