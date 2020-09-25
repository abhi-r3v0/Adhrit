.class public final Lo/createDrawableIfNeeded;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createDrawableIfNeeded$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u001a\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u00162\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u001d\u001a\u00020\u000cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/PaymentConfirmationFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "loadingUtil",
        "Lcom/cred/pay/ui/utils/PaymentLoadingUtil;",
        "viewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "getViewModel",
        "()Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "dismiss",
        "",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
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
        "onViewCreated",
        "view",
        "setData",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/createDrawableIfNeeded$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Lo/setAppSearchData;

.field private onMessageChannelReady:Ljava/util/HashMap;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/createDrawableIfNeeded$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/createDrawableIfNeeded$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/createDrawableIfNeeded;->extraCallback:Lo/createDrawableIfNeeded$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 45
    new-instance v0, Lo/createDrawableIfNeeded$asInterface;

    invoke-direct {v0, p0}, Lo/createDrawableIfNeeded$asInterface;-><init>(Lo/createDrawableIfNeeded;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 45
    iput-object v1, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/createDrawableIfNeeded;)Lo/MenuItemHoverListener;
    .locals 0

    .line 30000
    iget-object p0, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/MenuItemHoverListener;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/createDrawableIfNeeded;)Lo/setAppSearchData;
    .locals 0

    .line 43
    iget-object p0, p0, Lo/createDrawableIfNeeded;->ICustomTabsCallback:Lo/setAppSearchData;

    return-object p0
.end method

.method private onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/createDrawableIfNeeded;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/createDrawableIfNeeded;->onMessageChannelReady:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/createDrawableIfNeeded;->onMessageChannelReady:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/createDrawableIfNeeded;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lo/createAbtInstance;

    .line 60
    new-instance v0, Lo/createDrawableIfNeeded$extraCallback;

    invoke-direct {v0, p1}, Lo/createDrawableIfNeeded$extraCallback;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lo/onItemHoverEnter$onPostMessage;->black_70:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 68
    :cond_0
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 59
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m_()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 27000
    iget-object v2, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    if-eqz v2, :cond_0

    .line 27039
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub:Lo/isInputMethodNotNeeded;

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 27043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string v4, "instrument_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 171
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "payment_confirmation_dismiss"

    .line 171
    invoke-static {v0, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->m_()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 28000
    iget-object v2, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    if-eqz v2, :cond_0

    .line 28039
    iget-object v2, v2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub:Lo/isInputMethodNotNeeded;

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string v4, "instrument_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 177
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "payment_confirmation_dismiss"

    .line 177
    invoke-static {v0, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 49
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget-object p1, Lo/merge;->extraCallback:Lo/merge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "PaymentConfirmationFragment"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "source"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 1043
    :goto_0
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v1

    const/4 v2, 0x1

    .line 2000
    iget-object v3, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    if-eqz v3, :cond_1

    .line 2039
    iget-object v3, v3, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub:Lo/isInputMethodNotNeeded;

    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 2043
    :goto_1
    new-instance v5, Lo/addWrite;

    const-string v6, "payment_instrument"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v2

    const/4 v2, 0x2

    .line 3000
    iget-object v3, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    if-eqz v3, :cond_2

    .line 3039
    iget-object v3, v3, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub:Lo/isInputMethodNotNeeded;

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v4

    .line 3043
    :cond_2
    new-instance v3, Lo/addWrite;

    const-string v5, "payment_instrument_group"

    invoke-direct {v3, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const-string v2, "pairs"

    .line 52
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_confirmation_bottom_card_screen_load"

    .line 51
    invoke-static {p1, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    sget p1, Lo/onItemHoverEnter$onRelationshipValidationResult;->FabrikBottomSheetDialogTheme:I

    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget p3, Lo/onItemHoverEnter$onTransact;->fragment_payment_confirmation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 31000
    iget-object v0, p0, Lo/createDrawableIfNeeded;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3115
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->tvAmount:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "tvAmount"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4037
    iget-object v0, v0, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v0, :cond_0

    .line 4041
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 4075
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;->extraCallback:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3115
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5000
    iget-object p2, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/MenuItemHoverListener;

    const/4 v0, 0x0

    const-string v2, "$this$gone"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    .line 5037
    iget-object p2, p2, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz p2, :cond_3

    .line 5039
    iget-object p2, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    if-eqz p2, :cond_3

    .line 3118
    instance-of v5, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;

    const-string v6, "payingForNumber"

    const-string v7, "payingForLogoContainer"

    const-string v8, "payingForName"

    if-eqz v5, :cond_2

    .line 3119
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForLogo:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/getSuggestionCommitIconResId;

    check-cast p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;

    .line 5045
    iget-object v9, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 6045
    iget v10, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->extraCallback:I

    .line 3119
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lo/getSuggestionCommitIconResId;->onPostMessage(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7045
    iget-boolean v5, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    if-eqz v5, :cond_1

    .line 3121
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForLogo:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/getSuggestionCommitIconResId;

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3122
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForLogo:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/getSuggestionCommitIconResId;

    const-string v9, "payingForLogo"

    invoke-static {v5, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lo/getSuggestionCommitIconResId;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3123
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForLogoContainer:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/getNextSpan;

    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/getNextSpan;->setElevation(F)V

    .line 3124
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForLogoContainer:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/getNextSpan;

    invoke-virtual {v5, v0}, Lo/getNextSpan;->setCornerRadius(F)V

    .line 3126
    :cond_1
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForName:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8045
    iget-object v7, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 3126
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->payingForNumber:I

    invoke-direct {p0, v5}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9045
    iget-object p2, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 3127
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3129
    :cond_2
    instance-of p2, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onMessageChannelReady;

    if-eqz p2, :cond_3

    .line 3130
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->tvPayingForTitle:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "tvPayingForTitle"

    invoke-static {p2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10017
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3131
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->payingForName:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11017
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3132
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->payingForLogoContainer:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getNextSpan;

    invoke-static {p2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12017
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3133
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->payingForNumber:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13017
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3137
    :cond_3
    :goto_1
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->tvAmountTitle:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v5, "tvAmountTitle"

    invoke-static {p2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14000
    iget-object v5, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/MenuItemHoverListener;

    if-eqz v5, :cond_4

    .line 14037
    iget-object v5, v5, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v5, :cond_4

    .line 14041
    iget-object v5, v5, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    if-eqz v5, :cond_4

    .line 14076
    iget-object v5, v5, Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v5, v1

    .line 3137
    :goto_2
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15000
    iget-object p2, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/MenuItemHoverListener;

    const/4 v5, 0x1

    if-eqz p2, :cond_c

    .line 15039
    iget-object p2, p2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub:Lo/isInputMethodNotNeeded;

    if-eqz p2, :cond_c

    .line 3140
    sget v6, Lo/onItemHoverEnter$onNavigationEvent;->payUsingLogo:I

    invoke-direct {p0, v6}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/getSuggestionCommitIconResId;

    const-string v7, "payUsingLogo"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    const-string v8, "context!!"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v6, v7}, Lo/extraCallback;->ICustomTabsCallback(Lo/isInputMethodNotNeeded;Lo/getSuggestionCommitIconResId;Landroid/content/Context;)V

    .line 3142
    instance-of v6, p2, Lcom/cred/pay/repository/models/CardInstrument;

    const-string v7, "$this$visible"

    const-string v8, "payUsingSubTitle"

    const-string v9, "payUsingTitle"

    const-string v10, "cardLogo"

    if-eqz v6, :cond_7

    .line 3143
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3144
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->payUsingTitle:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3145
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->payUsingSubTitle:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/cred/pay/repository/models/CardInstrument;

    invoke-virtual {p2}, Lcom/cred/pay/repository/models/CardInstrument;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3146
    sget-object v2, Lo/setEpicenterBounds;->onTransact:Lo/setEpicenterBounds$extraCallback;

    .line 16098
    iget-object p2, p2, Lcom/cred/pay/repository/models/CardInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 3146
    invoke-static {p2}, Lo/setEpicenterBounds$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/setEpicenterBounds;

    move-result-object p2

    .line 3147
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    instance-of v6, p2, Lo/setEpicenterBounds$onTransact;

    xor-int/2addr v6, v5

    if-eqz v6, :cond_6

    const/4 v3, 0x0

    .line 3191
    :cond_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3148
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 17008
    iget p2, p2, Lo/setEpicenterBounds;->onMessageChannelReady:I

    .line 3148
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 3150
    :cond_7
    instance-of v6, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;

    if-eqz v6, :cond_8

    .line 3151
    sget v6, Lo/onItemHoverEnter$onNavigationEvent;->payUsingTitle:I

    invoke-direct {p0, v6}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v7, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->netbanking:I

    invoke-static {v7}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3152
    sget v6, Lo/onItemHoverEnter$onNavigationEvent;->payUsingSubTitle:I

    invoke-direct {p0, v6}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3153
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17017
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 3155
    :cond_8
    instance-of v6, p2, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    if-eqz v6, :cond_9

    .line 3156
    sget v6, Lo/onItemHoverEnter$onNavigationEvent;->payUsingTitle:I

    invoke-direct {p0, v6}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v7, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_apps:I

    invoke-static {v7}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3157
    sget v6, Lo/onItemHoverEnter$onNavigationEvent;->payUsingSubTitle:I

    invoke-direct {p0, v6}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/createFullSpanItemFromEnd;

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3158
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18017
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 3160
    :cond_9
    instance-of v2, p2, Lcom/cred/pay/repository/models/CredUpiInstrument;

    if-eqz v2, :cond_c

    .line 3161
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->payUsingTitle:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lo/isInputMethodNotNeeded;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3162
    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->payUsingSubTitle:I

    invoke-direct {p0, v2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 18337
    iget-object p2, p2, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz p2, :cond_a

    .line 19048
    iget-object p2, p2, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz p2, :cond_a

    .line 18337
    invoke-virtual {p2}, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    :cond_a
    const-string p2, ""

    .line 3162
    :cond_b
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3163
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    sget v2, Lo/onItemHoverEnter$onMessageChannelReady;->ic_upi_full:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3164
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->cardLogo:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20009
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_c
    :goto_3
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->pay:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string v2, "pay"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 20064
    sget-object v3, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v3, Lo/calculateScrollDirectionForPosition;

    const-string/jumbo v6, "s_tWhiteFour_bgBlack"

    invoke-static {p2, v6, v3}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    const/4 p2, 0x3

    new-array v3, p2, [Lo/addWrite;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "source"

    if-eqz v6, :cond_d

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_d
    move-object v6, v1

    .line 21043
    :goto_4
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v7, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v4

    .line 22000
    iget-object v6, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MenuItemHoverListener;

    if-eqz v6, :cond_e

    .line 22145
    iget-object v6, v6, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v6, :cond_e

    .line 82
    invoke-virtual {v6}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_e
    move-object v6, v1

    .line 23043
    :goto_5
    new-instance v7, Lo/addWrite;

    const-string v8, "payment_instrument_group"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v5

    const/4 v5, 0x2

    .line 24000
    iget-object v6, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MenuItemHoverListener;

    if-eqz v6, :cond_f

    .line 24145
    iget-object v6, v6, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v6, :cond_f

    .line 83
    invoke-virtual {v6}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 25043
    :cond_f
    new-instance v6, Lo/addWrite;

    const-string v7, "payment_instrument"

    invoke-direct {v6, v7, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v5

    const-string v1, "pairs"

    .line 80
    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 85
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->pay:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v2, Lo/createDrawableIfNeeded$onMessageChannelReady;

    invoke-direct {v2, p0, v1}, Lo/createDrawableIfNeeded$onMessageChannelReady;-><init>(Lo/createDrawableIfNeeded;Ljava/util/Map;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p2, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 90
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->flChange:I

    invoke-direct {p0, p2}, Lo/createDrawableIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const-string v2, "flChange"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v2, Lo/createDrawableIfNeeded$ICustomTabsCallback;

    invoke-direct {v2, p0, v1}, Lo/createDrawableIfNeeded$ICustomTabsCallback;-><init>(Lo/createDrawableIfNeeded;Ljava/util/Map;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p2, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 95
    new-instance p2, Lo/setAppSearchData;

    move-object v1, p1

    check-cast v1, Lo/onChildrenLoaded;

    const/4 v2, 0x6

    invoke-direct {p2, v1, v4, v0, v2}, Lo/setAppSearchData;-><init>(Lo/onChildrenLoaded;ZFI)V

    iput-object p2, p0, Lo/createDrawableIfNeeded;->ICustomTabsCallback:Lo/setAppSearchData;

    .line 26000
    iget-object p2, p0, Lo/createDrawableIfNeeded;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/MenuItemHoverListener;

    if-eqz p2, :cond_10

    .line 26051
    iget-object p2, p2, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    if-eqz p2, :cond_10

    .line 96
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/createDrawableIfNeeded$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/createDrawableIfNeeded$onPostMessage;-><init>(Lo/createDrawableIfNeeded;Landroid/view/View;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_10
    return-void
.end method
