.class public final Lo/updateAllRemainingSpans;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateAllRemainingSpans$extraCallback;,
        Lo/updateAllRemainingSpans$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002!\"B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\"\u0012\u001b\u0008\u0002\u0010\u0003\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u001e\u001a\u00020\u0006H\u0002J\u0006\u0010\u001f\u001a\u00020\u0006J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0005J\u001f\u0010\u001f\u001a\u00020\u00062\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/widget/GenericBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "block",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "uIState",
        "getUIState",
        "()Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "setUIState",
        "(Lcom/dreamplug/widget/GenericBottomSheet$UIState;)V",
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
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onViewCreated",
        "view",
        "showProgress",
        "updateUi",
        "uiState",
        "Button",
        "UIState",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 25
    new-instance p1, Lo/updateAllRemainingSpans$onMessageChannelReady;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ff

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lo/updateAllRemainingSpans$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;I)V

    iput-object p1, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    return-void
.end method

.method private final asInterface()V
    .locals 2

    .line 132
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    sget v1, Lo/preferLastSpan$asBinder;->neu_loader:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 133
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 134
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 135
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 136
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/updateAllRemainingSpans;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/updateAllRemainingSpans;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/updateAllRemainingSpans;->onPostMessage:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/updateAllRemainingSpans;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 49
    new-instance v0, Lo/updateAllRemainingSpans$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/updateAllRemainingSpans$onNavigationEvent;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 56
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lo/preferLastSpan$onTransact;->FabrikBottomSheetDialogTheme:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget p3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->genric_bottom_sheet:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 23000
    iget-object v0, p0, Lo/updateAllRemainingSpans;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onDismiss(Landroid/content/DialogInterface;)V

    .line 141
    iget-object p1, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 22159
    iget-object p1, p1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onTransact:Lo/getServerTime;

    if-eqz p1, :cond_0

    .line 141
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/updateAllRemainingSpans$onMessageChannelReady;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lo/updateAllRemainingSpans$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lo/updateAllRemainingSpans$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/updateAllRemainingSpans$extraCallback;Lo/updateAllRemainingSpans$extraCallback;ZLjava/lang/Integer;Ljava/lang/Integer;Lo/getServerTime;I)V

    iput-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 66
    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lo/updateAllRemainingSpans;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 8

    .line 72
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->title:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->title:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 1151
    iget-object v2, v2, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 74
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    xor-int/2addr v2, v3

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 164
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->title:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 2151
    iget-object v1, v1, Lo/updateAllRemainingSpans$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 75
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->desc:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "desc"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 2152
    iget-object v2, v2, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 76
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :goto_4
    xor-int/2addr v2, v3

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    .line 166
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->desc:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 3152
    iget-object v1, v1, Lo/updateAllRemainingSpans$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 77
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 3157
    iget-object v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    const-string v1, "ivIllustration"

    const-string v2, "$this$visible"

    const-string v3, "$this$gone"

    if-eqz v0, :cond_8

    .line 80
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->ivIllustration:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v6, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 4157
    iget-object v6, v6, Lo/updateAllRemainingSpans$onMessageChannelReady;->asInterface:Ljava/lang/Integer;

    if-nez v6, :cond_7

    .line 80
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->ivIllustration:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 83
    :cond_8
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->ivIllustration:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_6
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 5158
    iget-object v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    const-string/jumbo v1, "trustSymbol"

    const-string v6, "divider"

    if-eqz v0, :cond_a

    .line 87
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->trustSymbol:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v7, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 6158
    iget-object v7, v7, Lo/updateAllRemainingSpans$onMessageChannelReady;->asBinder:Ljava/lang/Integer;

    if-nez v7, :cond_9

    .line 87
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->trustSymbol:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->divider:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 91
    :cond_a
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->divider:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->trustSymbol:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_7
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 9155
    iget-boolean v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onNavigationEvent:Z

    const-string v1, "progressLottie"

    if-eqz v0, :cond_b

    .line 96
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-direct {p0}, Lo/updateAllRemainingSpans;->asInterface()V

    goto :goto_8

    .line 99
    :cond_b
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->progressLottie:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10017
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_8
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 10153
    iget-object v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    const-string/jumbo v1, "submit"

    if-eqz v0, :cond_11

    .line 103
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->submit:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->submit:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 11153
    iget-object v6, v6, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v6, :cond_c

    .line 104
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 12145
    :cond_c
    iget-object v6, v6, Lo/updateAllRemainingSpans$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 104
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 12153
    iget-object v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v0, :cond_d

    .line 105
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 13147
    :cond_d
    iget-object v0, v0, Lo/updateAllRemainingSpans$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 106
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->submit:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 13153
    iget-object v6, v6, Lo/updateAllRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v6, :cond_e

    .line 106
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 14147
    :cond_e
    iget-object v6, v6, Lo/updateAllRemainingSpans$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-nez v6, :cond_f

    .line 106
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 15064
    :cond_f
    sget-object v7, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v7, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v6, v7}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 107
    :cond_10
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->submit:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/updateAllRemainingSpans$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/updateAllRemainingSpans$ICustomTabsCallback;-><init>(Lo/updateAllRemainingSpans;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_9

    .line 113
    :cond_11
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->submit:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16017
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_9
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 16154
    iget-object v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    const-string v1, "cancel"

    if-eqz v0, :cond_17

    .line 116
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->cancel:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->cancel:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 17154
    iget-object v2, v2, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v2, :cond_12

    .line 117
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 18145
    :cond_12
    iget-object v2, v2, Lo/updateAllRemainingSpans$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 117
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 18154
    iget-object v0, v0, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v0, :cond_13

    .line 118
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 19147
    :cond_13
    iget-object v0, v0, Lo/updateAllRemainingSpans$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 119
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->cancel:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lo/updateAllRemainingSpans;->ICustomTabsCallback:Lo/updateAllRemainingSpans$onMessageChannelReady;

    .line 19154
    iget-object v2, v2, Lo/updateAllRemainingSpans$onMessageChannelReady;->extraCallback:Lo/updateAllRemainingSpans$extraCallback;

    if-nez v2, :cond_14

    .line 119
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 20147
    :cond_14
    iget-object v2, v2, Lo/updateAllRemainingSpans$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 119
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 21064
    :cond_15
    sget-object v3, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v3, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v2, v3}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 120
    :cond_16
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->cancel:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/updateAllRemainingSpans$onPostMessage;

    invoke-direct {v1, p0}, Lo/updateAllRemainingSpans$onPostMessage;-><init>(Lo/updateAllRemainingSpans;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 126
    :cond_17
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->cancel:I

    invoke-direct {p0, v0}, Lo/updateAllRemainingSpans;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22017
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lo/updateAllRemainingSpans;->onPostMessage()V

    return-void
.end method
