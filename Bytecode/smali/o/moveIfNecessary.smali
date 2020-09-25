.class public final Lo/moveIfNecessary;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/moveIfNecessary$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016J\u0008\u0010\u0019\u001a\u00020\rH\u0002J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/LendingFailureDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$LendingFailureDialogExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$LendingFailureDialogExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "dismiss",
        "",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "realDismiss",
        "sendIntentData",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "Companion",
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

.field private onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 26
    new-instance v0, Lo/moveIfNecessary$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/moveIfNecessary$ICustomTabsCallback;-><init>(Lo/moveIfNecessary;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 26
    iput-object v1, p0, Lo/moveIfNecessary;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/moveIfNecessary;)V
    .locals 2

    .line 13113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13135
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 13212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13114
    invoke-super {p0}, Lo/updateRemainingSpans;->m_()V

    :cond_1
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/moveIfNecessary;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 23
    iget-object p0, p0, Lo/moveIfNecessary;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/moveIfNecessary;Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V
    .locals 4

    .line 10120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lo/getSpanGroupIndex;

    const-string v1, "cta"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11016
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->extraCallback:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 10852
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x30012e

    if-eq v2, v3, :cond_2

    const v0, 0x258156e6

    if-eq v2, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "deeplink"

    .line 10853
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;

    if-eqz p1, :cond_6

    .line 10855
    sget-object v0, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    invoke-static {p1}, Lo/getMovementFlags;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "flow"

    .line 10858
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11019
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onTransact:Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 11026
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    .line 10860
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "change_account"

    .line 10861
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10862
    iget-object p1, v0, Lo/getSpanGroupIndex;->onNavigationEvent:Lo/setMeasuredDimension;

    if-nez p1, :cond_5

    const-string v0, "bankPresenter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lo/setMeasuredDimension;->onPostMessage()V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "retry"

    .line 10864
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10865
    invoke-virtual {v0}, Lo/getSpanGroupIndex;->onNavigationEvent()V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "reset"

    .line 10867
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12000
    iget-object p1, v0, Lo/getSpanGroupIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setRecycleChildrenOnDetach;

    .line 12055
    iput-object v1, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 12056
    iget-object v1, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v1, p1, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 10869
    invoke-virtual {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady()V

    goto :goto_1

    :sswitch_3
    const-string v1, "okay"

    .line 10871
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13000
    iget-object p1, v0, Lo/getSpanGroupIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setRecycleChildrenOnDetach;

    .line 13045
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 10872
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 10121
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void

    .line 10120
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x341314 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x67622a8 -> :sswitch_1
        0x3183949e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/moveIfNecessary;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "bottomSheetBehavior"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Lo/updateRemainingSpans;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "LendingFailureDialog"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0e021d

    .line 39
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 40
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 41
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2000
    iget-object v5, p0, Lo/moveIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onDetach$mayLaunchUrl;

    const-string v6, "$this$visible"

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 2138
    iget-object v5, v5, Lo/onDetach$mayLaunchUrl;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v5, :cond_1

    const-string v8, "primaryCta"

    .line 48
    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroid/view/View;

    invoke-static {v8, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v8, p3}, Landroid/view/View;->setVisibility(I)V

    .line 3015
    iget-object v9, v5, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_0

    .line 4000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v9, v7

    .line 49
    :goto_0
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v1, Lo/moveIfNecessary$extraCallback;

    invoke-direct {v1, v5, p0}, Lo/moveIfNecessary$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/moveIfNecessary;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v8, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 5000
    :cond_1
    iget-object v1, p0, Lo/moveIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$mayLaunchUrl;

    if-eqz v1, :cond_3

    .line 5138
    iget-object v1, v1, Lo/onDetach$mayLaunchUrl;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v1, :cond_3

    const-string/jumbo v5, "secondaryCta"

    .line 56
    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {v5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 6015
    iget-object p3, v1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p3, :cond_2

    .line 7000
    iget-object p3, p3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    move-object p3, v7

    .line 57
    :goto_1
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance p3, Lo/moveIfNecessary$onNavigationEvent;

    invoke-direct {p3, v1, p0}, Lo/moveIfNecessary$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/moveIfNecessary;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {v5, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_3
    const-string/jumbo p3, "title"

    .line 63
    invoke-static {v3, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    iget-object p3, p0, Lo/moveIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/onDetach$mayLaunchUrl;

    if-eqz p3, :cond_4

    .line 8138
    iget-object p3, p3, Lo/onDetach$mayLaunchUrl;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p3, v7

    .line 63
    :goto_2
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "desc"

    .line 64
    invoke-static {v4, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9000
    iget-object p3, p0, Lo/moveIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/onDetach$mayLaunchUrl;

    if-eqz p3, :cond_5

    .line 9138
    iget-object v7, p3, Lo/onDetach$mayLaunchUrl;->onNavigationEvent:Ljava/lang/String;

    .line 64
    :cond_5
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    move-object p3, p2

    check-cast p3, Landroid/view/View;

    invoke-static {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p3

    const-string v1, "BottomSheetBehavior.from(sheetView)"

    invoke-static {p3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lo/moveIfNecessary;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez p3, :cond_6

    .line 66
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 67
    iget-object p3, p0, Lo/moveIfNecessary;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p3, :cond_7

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9838
    :cond_7
    iput-boolean v2, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 68
    iget-object p3, p0, Lo/moveIfNecessary;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p3, :cond_8

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x5

    invoke-virtual {p3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const-string p3, "backgroundView"

    .line 71
    invoke-static {v0, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lo/moveIfNecessary$onMessageChannelReady;

    invoke-direct {p3, p0}, Lo/moveIfNecessary$onMessageChannelReady;-><init>(Lo/moveIfNecessary;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {v0, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 76
    new-instance p3, Lo/moveIfNecessary$onTransact;

    invoke-direct {p3, p0, v0}, Lo/moveIfNecessary$onTransact;-><init>(Lo/moveIfNecessary;Landroid/view/View;)V

    check-cast p3, Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 14000
    iget-object v0, p0, Lo/moveIfNecessary;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/moveIfNecessary;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/moveIfNecessary;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/moveIfNecessary;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/moveIfNecessary;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/moveIfNecessary;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 103
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 104
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x106000d

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method
