.class public final Lo/endRecoverAnimation;
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001b\u001a\u00020\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010 \u001a\u00020\rH\u0016J\u0008\u0010!\u001a\u00020\rH\u0016J\u0008\u0010\"\u001a\u00020\rH\u0002J\n\u0010#\u001a\u00020$*\u00020$R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/LoanCustomAmountDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "error",
        "Landroid/widget/TextView;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "onDismiss",
        "Lkotlin/Function0;",
        "",
        "getOnDismiss",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnDismiss",
        "(Lkotlin/jvm/functions/Function0;)V",
        "payAmount",
        "Landroid/widget/EditText;",
        "proceed",
        "Lcom/dreamplug/widget/ProgressButton;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashPayViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashPayViewModel;",
        "viewModel$delegate",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onDetach",
        "onStart",
        "updateUi",
        "toPlainNumbers",
        "",
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
.field private ICustomTabsCallback:Lo/recycleFromEnd;

.field private asInterface:Landroid/widget/TextView;

.field final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/isSameListener;

.field onNavigationEvent:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 160
    new-instance v0, Lo/endRecoverAnimation$onPostMessage;

    invoke-direct {v0, p0}, Lo/endRecoverAnimation$onPostMessage;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 160
    iput-object v2, p0, Lo/endRecoverAnimation;->onMessageChannelReady:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 44
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 44
    iput-object v1, p0, Lo/endRecoverAnimation;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/endRecoverAnimation;)Lo/canScrollHorizontally;
    .locals 0

    .line 6000
    iget-object p0, p0, Lo/endRecoverAnimation;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/canScrollHorizontally;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/endRecoverAnimation;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/endRecoverAnimation;->asInterface:Landroid/widget/TextView;

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$toPlainNumbers"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ","

    const-string v1, ""

    const/4 v2, 0x0

    .line 3075
    invoke-static {p0, v0, v1, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/endRecoverAnimation;)Lo/recycleFromEnd;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/endRecoverAnimation;->ICustomTabsCallback:Lo/recycleFromEnd;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/endRecoverAnimation;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/endRecoverAnimation;->onPostMessage:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 70
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Lo/createAbtInstance;

    .line 71
    sget-object v0, Lo/endRecoverAnimation$onNavigationEvent;->onNavigationEvent:Lo/endRecoverAnimation$onNavigationEvent;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0230

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v1, "contentView"

    .line 79
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const v3, 0x7f060209

    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b062d

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lo/endRecoverAnimation;->onPostMessage:Landroid/widget/EditText;

    const v1, 0x7f0b0688

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/recycleFromEnd;

    iput-object v1, p0, Lo/endRecoverAnimation;->ICustomTabsCallback:Lo/recycleFromEnd;

    const v1, 0x7f0b02df

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/endRecoverAnimation;->asInterface:Landroid/widget/TextView;

    .line 83
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/endRecoverAnimation$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/endRecoverAnimation$onMessageChannelReady;-><init>(Lo/endRecoverAnimation;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "command"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x190

    .line 2018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v1, v2, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 2092
    iget-object v0, p0, Lo/endRecoverAnimation;->onPostMessage:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    new-instance v1, Lo/endRecoverAnimation$extraCallback;

    invoke-direct {v1, p0}, Lo/endRecoverAnimation$extraCallback;-><init>(Lo/endRecoverAnimation;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3000
    :cond_1
    iget-object v0, p0, Lo/endRecoverAnimation;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/canScrollHorizontally;

    .line 3028
    iget-object v0, v0, Lo/canScrollHorizontally;->onNavigationEvent:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 2112
    move-object v1, p0

    check-cast v1, Lo/toLegacyStreamType;

    new-instance v2, Lo/endRecoverAnimation$asBinder;

    invoke-direct {v2, p0}, Lo/endRecoverAnimation$asBinder;-><init>(Lo/endRecoverAnimation;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 2128
    iget-object v0, p0, Lo/endRecoverAnimation;->ICustomTabsCallback:Lo/recycleFromEnd;

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/endRecoverAnimation$asInterface;

    invoke-direct {v1, p0}, Lo/endRecoverAnimation$asInterface;-><init>(Lo/endRecoverAnimation;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 2141
    :cond_2
    iget-object v0, p0, Lo/endRecoverAnimation;->onPostMessage:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    new-instance v1, Lo/endRecoverAnimation$ICustomTabsCallback$Stub;

    invoke-direct {v1, p0}, Lo/endRecoverAnimation$ICustomTabsCallback$Stub;-><init>(Lo/endRecoverAnimation;)V

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2148
    :cond_3
    iget-object v0, p0, Lo/endRecoverAnimation;->onPostMessage:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    new-instance v1, Lo/getChangingConfigurations$onMessageChannelReady;

    if-nez v0, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-direct {v1, v0}, Lo/getChangingConfigurations$onMessageChannelReady;-><init>(Landroid/widget/EditText;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2150
    :cond_5
    iget-object v0, p0, Lo/endRecoverAnimation;->onPostMessage:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lo/getColor$onNavigationEvent;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lo/getColor$onNavigationEvent;-><init>(I)V

    check-cast v3, Landroid/text/InputFilter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 2151
    :cond_6
    iget-object v0, p0, Lo/endRecoverAnimation;->ICustomTabsCallback:Lo/recycleFromEnd;

    if-eqz v0, :cond_7

    const-string v1, "Proceed"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 2152
    :cond_7
    iget-object v0, p0, Lo/endRecoverAnimation;->ICustomTabsCallback:Lo/recycleFromEnd;

    if-eqz v0, :cond_8

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 88
    :cond_8
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 70
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "CustomAmountDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 50
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 3

    .line 54
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDetach()V

    .line 55
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 2000
    sget-object v0, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 55
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 59
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onStart()V

    .line 60
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    new-instance v5, Lo/endRecoverAnimation$ICustomTabsCallback;

    invoke-direct {v5, v0}, Lo/endRecoverAnimation$ICustomTabsCallback;-><init>(Landroid/view/Window;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {v1, v2, v3, v4, v5}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 64
    iget-object v0, p0, Lo/endRecoverAnimation;->onNavigationEvent:Lo/getServerTime;

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    :cond_1
    return-void
.end method
