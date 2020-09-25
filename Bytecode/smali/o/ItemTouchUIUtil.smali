.class public final Lo/ItemTouchUIUtil;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0012\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020%2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J&\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u001a\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\'2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013\u00a8\u0006."
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/StashOkycPitchDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "extraData",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashWorkFlowExtra;",
        "getExtraData",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashWorkFlowExtra;",
        "extraData$delegate",
        "Lkotlin/Lazy;",
        "listSimData",
        "",
        "Lcom/dreamplug/fabrik/ui/sms/SimData;",
        "pitchList",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "primaryButton",
        "Landroid/widget/TextView;",
        "getPrimaryButton",
        "()Landroid/widget/TextView;",
        "setPrimaryButton",
        "(Landroid/widget/TextView;)V",
        "secondaryButton",
        "getSecondaryButton",
        "setSecondaryButton",
        "simUtils",
        "Lcom/dreamplug/fabrik/ui/sms/SimUtils;",
        "titleText",
        "getTitleText",
        "setTitleText",
        "getTheme",
        "",
        "isDualSim",
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
.field private ICustomTabsCallback:Landroid/widget/TextView;

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setExactMeasureSpecsFrom;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/hasFlexibleChildInBothOrientations;

.field private onMessageChannelReady:Landroid/widget/TextView;

.field private onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

.field private onPostMessage:Landroid/widget/TextView;

.field private final onTransact:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 34
    new-instance v0, Lo/hasFlexibleChildInBothOrientations;

    invoke-direct {v0}, Lo/hasFlexibleChildInBothOrientations;-><init>()V

    iput-object v0, p0, Lo/ItemTouchUIUtil;->extraCallback:Lo/hasFlexibleChildInBothOrientations;

    .line 10017
    iget-object v0, v0, Lo/hasFlexibleChildInBothOrientations;->onPostMessage:Ljava/util/List;

    .line 35
    iput-object v0, p0, Lo/ItemTouchUIUtil;->asInterface:Ljava/util/List;

    .line 37
    new-instance v0, Lo/ItemTouchUIUtil$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/ItemTouchUIUtil$onNavigationEvent;-><init>(Lo/ItemTouchUIUtil;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 37
    iput-object v1, p0, Lo/ItemTouchUIUtil;->onTransact:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ItemTouchUIUtil;)Z
    .locals 1

    .line 10105
    iget-object p0, p0, Lo/ItemTouchUIUtil;->asInterface:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-le p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/ItemTouchUIUtil;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/ItemTouchUIUtil;->asInterface:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/ItemTouchUIUtil;)Lo/onDetach$write;
    .locals 0

    .line 11000
    iget-object p0, p0, Lo/ItemTouchUIUtil;->onTransact:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$write;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 51
    new-instance v0, Lo/ItemTouchUIUtil$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/ItemTouchUIUtil$ICustomTabsCallback;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 57
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 50
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

    .line 44
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "StashOkycPitchDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 46
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f060031

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const p3, 0x7f0e028b

    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 64
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->primaryButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.primaryButton"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/ItemTouchUIUtil;->onPostMessage:Landroid/widget/TextView;

    .line 65
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->secondaryButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.secondaryButton"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/ItemTouchUIUtil;->onMessageChannelReady:Landroid/widget/TextView;

    .line 66
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.title"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/ItemTouchUIUtil;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 67
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->pitchList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo p3, "view.pitchList"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/ItemTouchUIUtil;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lo/cachePreLayoutSpanMapping;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/cachePreLayoutSpanMapping;

    if-eqz p1, :cond_1

    .line 2006
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    const-string/jumbo v1, "stash_okyc_pitch_screen_load"

    invoke-interface {p1, v1, p2}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    :cond_1
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 75
    new-instance p2, Lo/setDefaultSwipeDirs;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lo/setDefaultSwipeDirs;-><init>(B)V

    check-cast p2, Lo/checkForGaps;

    const-string v2, "adapter"

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 77
    iget-object p1, p0, Lo/ItemTouchUIUtil;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    const-string v1, "pitchList"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    move-object v1, p2

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object p1, p0, Lo/ItemTouchUIUtil;->onPostMessage:Landroid/widget/TextView;

    const-string v1, "primaryButton"

    if-nez p1, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast p1, Landroid/view/View;

    new-instance v2, Lo/ItemTouchUIUtil$onPostMessage;

    invoke-direct {v2, p0}, Lo/ItemTouchUIUtil$onPostMessage;-><init>(Lo/ItemTouchUIUtil;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 89
    iget-object p1, p0, Lo/ItemTouchUIUtil;->onMessageChannelReady:Landroid/widget/TextView;

    const-string/jumbo v2, "secondaryButton"

    if-nez p1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Landroid/view/View;

    new-instance v3, Lo/ItemTouchUIUtil$onMessageChannelReady;

    invoke-direct {v3, p0}, Lo/ItemTouchUIUtil$onMessageChannelReady;-><init>(Lo/ItemTouchUIUtil;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {p1, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 3000
    iget-object p1, p0, Lo/ItemTouchUIUtil;->onTransact:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$write;

    if-eqz p1, :cond_a

    .line 3131
    iget-object p1, p1, Lo/onDetach$write;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz p1, :cond_a

    .line 3141
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    if-eqz p1, :cond_a

    .line 3380
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SetupPitch;

    if-eqz p1, :cond_a

    .line 95
    iget-object v3, p0, Lo/ItemTouchUIUtil;->onPostMessage:Landroid/widget/TextView;

    if-nez v3, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3394
    :cond_5
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SetupPitch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v1, :cond_6

    .line 4015
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_6

    .line 5000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_6
    move-object v1, v0

    .line 95
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lo/ItemTouchUIUtil;->onMessageChannelReady:Landroid/widget/TextView;

    if-nez v1, :cond_7

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5396
    :cond_7
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SetupPitch;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v2, :cond_8

    .line 6015
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_8

    .line 7000
    iget-object v0, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 96
    :cond_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lo/ItemTouchUIUtil;->ICustomTabsCallback:Landroid/widget/TextView;

    if-nez v0, :cond_9

    const-string/jumbo v1, "titleText"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7397
    :cond_9
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SetupPitch;->onNavigationEvent:Ljava/lang/String;

    .line 97
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8392
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SetupPitch;->onMessageChannelReady:Ljava/util/List;

    if-eqz p1, :cond_a

    const-string/jumbo v0, "value"

    .line 99
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 9038
    invoke-virtual {p2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_a
    return-void
.end method
