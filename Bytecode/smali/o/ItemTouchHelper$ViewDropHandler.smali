.class public final Lo/ItemTouchHelper$ViewDropHandler;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;,
        Lo/ItemTouchHelper$ViewDropHandler$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\u0018\u0000 +2\u00020\u0001:\u0002+,B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00102\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J-\u0010!\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010\"\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020$0#2\u0006\u0010%\u001a\u00020&H\u0016\u00a2\u0006\u0002\u0010\'J\u001a\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u001c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010*\u001a\u00020\u0010H\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006-"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadharSingleSimSelector;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "extraData",
        "Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadharSingleSimSelector$SimSelectionData;",
        "getExtraData",
        "()Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadharSingleSimSelector$SimSelectionData;",
        "extraData$delegate",
        "Lkotlin/Lazy;",
        "secondaryButton",
        "Landroid/widget/TextView;",
        "getSecondaryButton",
        "()Landroid/widget/TextView;",
        "setSecondaryButton",
        "(Landroid/widget/TextView;)V",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
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
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onViewCreated",
        "view",
        "openSmsDetectionDialog",
        "Companion",
        "SimSelectionData",
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
.field public static final ICustomTabsCallback:Lo/ItemTouchHelper$ViewDropHandler$extraCallback;


# instance fields
.field private extraCallback:Landroid/widget/TextView;

.field private onMessageChannelReady:Ljava/util/HashMap;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ItemTouchHelper$ViewDropHandler$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ItemTouchHelper$ViewDropHandler$extraCallback;-><init>(B)V

    sput-object v0, Lo/ItemTouchHelper$ViewDropHandler;->ICustomTabsCallback:Lo/ItemTouchHelper$ViewDropHandler$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 40
    new-instance v0, Lo/ItemTouchHelper$ViewDropHandler$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$ViewDropHandler$onMessageChannelReady;-><init>(Lo/ItemTouchHelper$ViewDropHandler;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 40
    iput-object v1, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ItemTouchHelper$ViewDropHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage()V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/ItemTouchHelper$ViewDropHandler;)Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;
    .locals 0

    .line 14000
    iget-object p0, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    return-object p0
.end method

.method private final onPostMessage()V
    .locals 8

    .line 6000
    iget-object v0, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    if-eqz v0, :cond_2

    .line 6130
    iget-object v0, v0, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;->ICustomTabsCallback:Lo/onDetach$write;

    if-eqz v0, :cond_2

    .line 6131
    iget-object v0, v0, Lo/onDetach$write;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz v0, :cond_2

    .line 6141
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    if-eqz v0, :cond_2

    .line 6382
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsPermissionConfirmation;

    if-eqz v0, :cond_2

    .line 105
    sget-object v1, Lo/onSelected;->ICustomTabsCallback:Lo/onSelected$extraCallback;

    new-instance v1, Lo/onSelected$ICustomTabsCallback;

    .line 7000
    iget-object v2, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7130
    iget-object v2, v2, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;->onPostMessage:Lo/setExactMeasureSpecsFrom;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 7408
    :goto_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsPermissionConfirmation;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsData;

    .line 7431
    iget-object v5, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsData;->extraCallback:Ljava/lang/String;

    .line 8408
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsPermissionConfirmation;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsData;

    .line 8429
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsData;->onPostMessage:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9000
    iget-object v2, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    if-eqz v2, :cond_1

    .line 9130
    iget-object v2, v2, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;->ICustomTabsCallback:Lo/onDetach$write;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    const-string/jumbo v7, "single"

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    .line 105
    invoke-direct/range {v2 .. v7}, Lo/onSelected$ICustomTabsCallback;-><init>(Lo/setExactMeasureSpecsFrom;Ljava/lang/String;Ljava/lang/String;Lo/onDetach$write;Ljava/lang/String;)V

    .line 9183
    new-instance v0, Lo/onSelected;

    invoke-direct {v0}, Lo/onSelected;-><init>()V

    .line 9184
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroid/os/Parcelable;

    const-string v3, "extra"

    .line 10016
    invoke-static {v2, v1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 106
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "OkycSmsDetectionDialog"

    invoke-virtual {v0, v1, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 52
    new-instance v0, Lo/ItemTouchHelper$ViewDropHandler$onPostMessage;

    invoke-direct {v0, p1}, Lo/ItemTouchHelper$ViewDropHandler$onPostMessage;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 58
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 112
    invoke-super {p0, p1, p2, p3}, Lo/getAllExperimentsInAnalytics;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_4

    .line 113
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "manual_flow"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p3, "lifecycle"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance p3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 136
    new-instance v1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 10212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    .line 115
    sget-object v0, Lo/getSwipeDirs;->onMessageChannelReady:Lo/getSwipeDirs$onPostMessage;

    .line 12000
    iget-object v0, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 12130
    iget-object v2, v0, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;->ICustomTabsCallback:Lo/onDetach$write;

    :cond_1
    const-string/jumbo v0, "timeout"

    .line 115
    invoke-static {v2, v0}, Lo/getSwipeDirs$onPostMessage;->onMessageChannelReady(Lo/onDetach$write;Ljava/lang/String;)Lo/getSwipeDirs;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v3, "AadhaarInputDialog"

    invoke-virtual {v0, v2, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 139
    iput-boolean p2, p3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p2

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p2, v0, :cond_3

    .line 141
    new-instance p2, Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;

    invoke-direct {p2, p1, p3, p0}, Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/ItemTouchHelper$ViewDropHandler;)V

    check-cast p2, Lo/createCallback;

    iput-object p2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 142
    iget-object p2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 144
    :cond_3
    :goto_0
    new-instance p2, Lo/ItemTouchHelper$ViewDropHandler$ICustomTabsCallback;

    invoke-direct {p2, v1, p1}, Lo/ItemTouchHelper$ViewDropHandler$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 118
    :cond_4
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "AadharSingleSimSelector"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 47
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f060031

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const p3, 0x7f0e01b7

    .line 64
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 65
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->secondaryButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p3, "view.secondaryButton"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/ItemTouchHelper$ViewDropHandler;->extraCallback:Landroid/widget/TextView;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 15000
    iget-object v0, p0, Lo/ItemTouchHelper$ViewDropHandler;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2, p3}, Lo/getAllExperimentsInAnalytics;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xbc2

    if-eq p1, p2, :cond_0

    goto/16 :goto_3

    .line 133
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_3

    aget v2, p3, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 92
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p3

    instance-of v0, p3, Lo/cachePreLayoutSpanMapping;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move-object p3, v2

    :cond_4
    check-cast p3, Lo/cachePreLayoutSpanMapping;

    if-eqz p3, :cond_5

    new-array v0, v1, [Lo/addWrite;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v5, "permission"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, p2

    const-string p2, "pairs"

    .line 92
    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "stash_okyc_sms_permission"

    .line 92
    invoke-interface {p3, v0, p2}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 94
    invoke-direct {p0}, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage()V

    return-void

    .line 96
    :cond_6
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    .line 97
    sget-object p1, Lo/getSwipeDirs;->onMessageChannelReady:Lo/getSwipeDirs$onPostMessage;

    .line 5000
    iget-object p1, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    if-eqz p1, :cond_7

    .line 5130
    iget-object p1, p1, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;->ICustomTabsCallback:Lo/onDetach$write;

    if-eqz p1, :cond_7

    const-string p2, ""

    .line 97
    invoke-static {p1, p2}, Lo/onDetach$write;->extraCallback(Lo/onDetach$write;Ljava/lang/String;)Lo/onDetach$write;

    move-result-object v2

    :cond_7
    const-string p1, "permission_denied"

    invoke-static {v2, p1}, Lo/getSwipeDirs$onPostMessage;->onMessageChannelReady(Lo/onDetach$write;Ljava/lang/String;)Lo/getSwipeDirs;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    const-string p3, "AadhaarInputDialog"

    invoke-virtual {p1, p2, p3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
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

    const-string/jumbo v1, "stash_okyc_single_sim_selector_load"

    invoke-interface {p1, v1, p2}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 3000
    :cond_1
    iget-object p1, p0, Lo/ItemTouchHelper$ViewDropHandler;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    if-eqz p1, :cond_6

    .line 3130
    iget-object p1, p1, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;->ICustomTabsCallback:Lo/onDetach$write;

    if-eqz p1, :cond_6

    .line 3131
    iget-object p1, p1, Lo/onDetach$write;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz p1, :cond_6

    .line 3141
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;

    if-eqz p1, :cond_6

    .line 3382
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$OkycSetup;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$SmsPermissionConfirmation;

    if-eqz p1, :cond_6

    .line 73
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->primaryButton:I

    .line 4000
    iget-object p2, p0, Lo/ItemTouchHelper$ViewDropHandler;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/ItemTouchHelper$ViewDropHandler;->onMessageChannelReady:Ljava/util/HashMap;

    :cond_2
    iget-object p2, p0, Lo/ItemTouchHelper$ViewDropHandler;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lo/ItemTouchHelper$ViewDropHandler;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v0, p2

    .line 73
    :goto_0
    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string p1, "primaryButton"

    invoke-static {v0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance p1, Lo/ItemTouchHelper$ViewDropHandler$asBinder;

    invoke-direct {p1, p0}, Lo/ItemTouchHelper$ViewDropHandler$asBinder;-><init>(Lo/ItemTouchHelper$ViewDropHandler;)V

    check-cast p1, Lo/onDisconnectSetValue;

    invoke-static {v0, p1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 80
    iget-object p1, p0, Lo/ItemTouchHelper$ViewDropHandler;->extraCallback:Landroid/widget/TextView;

    if-nez p1, :cond_5

    const-string/jumbo p2, "secondaryButton"

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/ItemTouchHelper$ViewDropHandler$onRelationshipValidationResult;

    invoke-direct {p2, p0}, Lo/ItemTouchHelper$ViewDropHandler$onRelationshipValidationResult;-><init>(Lo/ItemTouchHelper$ViewDropHandler;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_6
    return-void
.end method
