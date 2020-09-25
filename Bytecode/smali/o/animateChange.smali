.class public final Lo/animateChange;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/animateChange$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/currency/CurrencyDayFilterDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "ctaClickListener",
        "Lcom/dreamplug/fabrik/ui/currency/CurrencyDayFilterDialog$OnBottomSheetCtaClicked;",
        "getCtaClickListener",
        "()Lcom/dreamplug/fabrik/ui/currency/CurrencyDayFilterDialog$OnBottomSheetCtaClicked;",
        "setCtaClickListener",
        "(Lcom/dreamplug/fabrik/ui/currency/CurrencyDayFilterDialog$OnBottomSheetCtaClicked;)V",
        "last12Month",
        "Landroid/widget/TextView;",
        "getLast12Month",
        "()Landroid/widget/TextView;",
        "setLast12Month",
        "(Landroid/widget/TextView;)V",
        "last6Month",
        "getLast6Month",
        "setLast6Month",
        "lastMonth",
        "getLastMonth",
        "setLastMonth",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onDestroyView",
        "OnBottomSheetCtaClicked",
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

.field private onMessageChannelReady:Landroid/widget/TextView;

.field private onNavigationEvent:Landroid/widget/TextView;

.field onPostMessage:Lo/animateChange$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 31
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lo/createAbtInstance;

    .line 32
    sget-object v0, Lo/animateChange$onNavigationEvent;->onMessageChannelReady:Lo/animateChange$onNavigationEvent;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00a5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string/jumbo v1, "view"

    .line 40
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

    const v1, 0x7f0b04ae

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.lastMonth)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/animateChange;->onNavigationEvent:Landroid/widget/TextView;

    const v1, 0x7f0b0409

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view.findViewById(R.id.halfYearly)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/animateChange;->ICustomTabsCallback:Landroid/widget/TextView;

    const v1, 0x7f0b09d9

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.yearly)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/animateChange;->onMessageChannelReady:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lo/animateChange;->onNavigationEvent:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, "lastMonth"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/animateChange$extraCallback;

    invoke-direct {v1, p0}, Lo/animateChange$extraCallback;-><init>(Lo/animateChange;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 50
    iget-object v0, p0, Lo/animateChange;->ICustomTabsCallback:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "last6Month"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/animateChange$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/animateChange$ICustomTabsCallback;-><init>(Lo/animateChange;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 55
    iget-object v0, p0, Lo/animateChange;->onMessageChannelReady:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v1, "last12Month"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/animateChange$onPostMessage;

    invoke-direct {v1, p0}, Lo/animateChange$onPostMessage;-><init>(Lo/animateChange;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 59
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 31
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m_()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lo/animateChange;->onPostMessage:Lo/animateChange$onMessageChannelReady;

    .line 65
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->m_()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "CurrencyDayFilterDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 27
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 69
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lo/animateChange;->onPostMessage:Lo/animateChange$onMessageChannelReady;

    return-void
.end method
