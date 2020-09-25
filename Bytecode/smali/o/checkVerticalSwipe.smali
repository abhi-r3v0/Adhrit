.class public final Lo/checkVerticalSwipe;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/checkVerticalSwipe$ICustomTabsCallback;,
        Lo/checkVerticalSwipe$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 %2\u00020\u0001:\u0002%&B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u001e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/StashInterestDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lending/dialog/StashInterestDialog$Data;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lending/dialog/StashInterestDialog$Data;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "interestText",
        "Landroid/widget/TextView;",
        "pitchList",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "primaryButton",
        "getPrimaryButton",
        "()Landroid/widget/TextView;",
        "setPrimaryButton",
        "(Landroid/widget/TextView;)V",
        "titleText",
        "getTitleText",
        "setTitleText",
        "getTheme",
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
        "onViewCreated",
        "view",
        "Companion",
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


# static fields
.field public static final onNavigationEvent:Lo/checkVerticalSwipe$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

.field private extraCallback:Landroid/widget/TextView;

.field private onMessageChannelReady:Landroid/widget/TextView;

.field private onPostMessage:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/checkVerticalSwipe$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/checkVerticalSwipe$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/checkVerticalSwipe;->onNavigationEvent:Lo/checkVerticalSwipe$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 33
    new-instance v0, Lo/checkVerticalSwipe$onPostMessage;

    invoke-direct {v0, p0}, Lo/checkVerticalSwipe$onPostMessage;-><init>(Lo/checkVerticalSwipe;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 33
    iput-object v1, p0, Lo/checkVerticalSwipe;->onRelationshipValidationResult:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 47
    new-instance v0, Lo/checkVerticalSwipe$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/checkVerticalSwipe$onMessageChannelReady;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 53
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asBinder()I
    .locals 1

    const v0, 0x7f140105

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "StashInterestDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 42
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f060031

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const p3, 0x7f0e0213

    .line 59
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 60
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->primaryButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.primaryButton"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/checkVerticalSwipe;->onMessageChannelReady:Landroid/widget/TextView;

    .line 61
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.title"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/checkVerticalSwipe;->onPostMessage:Landroid/widget/TextView;

    .line 62
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->interestText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.interestText"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/checkVerticalSwipe;->extraCallback:Landroid/widget/TextView;

    .line 63
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->pitchList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo p3, "view.pitchList"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/checkVerticalSwipe;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 70
    new-instance p2, Lo/measureChild;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lo/measureChild;-><init>(B)V

    check-cast p2, Lo/checkForGaps;

    const-string v1, "adapter"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v0}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 72
    iget-object p1, p0, Lo/checkVerticalSwipe;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const-string v0, "pitchList"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2000
    iget-object p1, p0, Lo/checkVerticalSwipe;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkVerticalSwipe$ICustomTabsCallback;

    if-eqz p1, :cond_7

    .line 2095
    iget-object p1, p1, Lo/checkVerticalSwipe$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    if-eqz p1, :cond_7

    .line 74
    iget-object v0, p0, Lo/checkVerticalSwipe;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v1, "primaryButton"

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3074
    :cond_1
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v2, :cond_2

    .line 4015
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    .line 5000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    :cond_2
    const-string v2, ""

    .line 74
    check-cast v2, Ljava/lang/CharSequence;

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lo/checkVerticalSwipe;->onPostMessage:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string/jumbo v2, "titleText"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5071
    :cond_4
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;->onPostMessage:Ljava/lang/String;

    .line 75
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lo/checkVerticalSwipe;->extraCallback:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v2, "interestText"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5073
    :cond_5
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;->onNavigationEvent:Ljava/lang/String;

    .line 76
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lo/checkVerticalSwipe;->onMessageChannelReady:Landroid/widget/TextView;

    if-nez p1, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/checkVerticalSwipe$extraCallback;

    invoke-direct {v0, p0}, Lo/checkVerticalSwipe$extraCallback;-><init>(Lo/checkVerticalSwipe;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 6000
    :cond_7
    iget-object p1, p0, Lo/checkVerticalSwipe;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkVerticalSwipe$ICustomTabsCallback;

    if-eqz p1, :cond_8

    .line 6095
    iget-object p1, p1, Lo/checkVerticalSwipe$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;

    if-eqz p1, :cond_8

    .line 7070
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$InterestInfo;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_8

    const-string/jumbo v0, "value"

    .line 82
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 8038
    invoke-virtual {p2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_8
    return-void
.end method
