.class public final Lo/onPrimaryNavigationFragmentChanged;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/widget/CredCardMini;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/LayoutCardViewBinding;",
        "setBankNameTopMargin",
        "",
        "dimen",
        "",
        "setCardTemplate",
        "cardDetails",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "setTotalCardCount",
        "cardCount",
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
.field private final ICustomTabsCallback:Lo/shouldWrap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/onPrimaryNavigationFragmentChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/onPrimaryNavigationFragmentChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/onPrimaryNavigationFragmentChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e01d9

    .line 5108
    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5110
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p2, 0x7f0b00af

    .line 5121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_e

    const p2, 0x7f0b00f7

    .line 5126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_d

    const p2, 0x7f0b014a

    .line 5131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    if-eqz p2, :cond_c

    const p2, 0x7f0b014d

    .line 5136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    const p2, 0x7f0b014e

    .line 5141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lo/setSpeed;

    if-eqz v2, :cond_a

    const p2, 0x7f0b014f

    .line 5146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    const p2, 0x7f0b0150

    .line 5151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lo/setSpeed;

    if-eqz v4, :cond_8

    const p2, 0x7f0b016a

    .line 5156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    const p2, 0x7f0b016e

    .line 5161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    const p2, 0x7f0b017d

    .line 5166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lo/setSpeed;

    if-eqz v7, :cond_5

    const p2, 0x7f0b019b

    .line 5171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    const p2, 0x7f0b03de

    .line 5176
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/applyOptions;

    if-eqz p2, :cond_3

    const p2, 0x7f0b03ec

    .line 5181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/applyOptions;

    if-eqz p2, :cond_2

    const p2, 0x7f0b05c0

    .line 5186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    const p2, 0x7f0b0894

    .line 5191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 5196
    new-instance p1, Lo/shouldWrap;

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lo/shouldWrap;-><init>(Landroid/view/View;Lo/setSpeed;Landroid/widget/TextView;Lo/setSpeed;Landroid/widget/TextView;Landroid/widget/TextView;Lo/setSpeed;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-string p2, "LayoutCardViewBinding.in\u2026rom(context), this, true)"

    .line 21
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    return-void

    :cond_0
    const-string/jumbo p1, "textViewMoreCards"

    goto :goto_0

    :cond_1
    const-string p1, "nfcLogo"

    goto :goto_0

    :cond_2
    const-string p1, "guideStart"

    goto :goto_0

    :cond_3
    const-string p1, "guideEnd"

    goto :goto_0

    :cond_4
    const-string p1, "centerImage"

    goto :goto_0

    :cond_5
    const-string p1, "cardTypeIv"

    goto :goto_0

    :cond_6
    const-string p1, "cardNumberTv"

    goto :goto_0

    :cond_7
    const-string p1, "cardNameTv"

    goto :goto_0

    :cond_8
    const-string p1, "cardBgPattern"

    goto :goto_0

    :cond_9
    const-string p1, "cardBankName"

    goto :goto_0

    :cond_a
    const-string p1, "cardBankLogo"

    goto :goto_0

    :cond_b
    const-string p1, "cardBackgroundView"

    goto :goto_0

    :cond_c
    const-string p1, "card"

    goto :goto_0

    :cond_d
    const-string p1, "bottomBar"

    goto :goto_0

    :cond_e
    const-string p1, "background"

    .line 5200
    :goto_0
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/onPrimaryNavigationFragmentChanged;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final setBankNameTopMargin(F)V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->extraCallback:Landroid/widget/TextView;

    const-string v1, "binding.cardBankName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 72
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 73
    iget-object p1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object p1, p1, Lo/shouldWrap;->extraCallback:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 71
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCardTemplate(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V
    .locals 14

    if-eqz p1, :cond_8

    .line 25
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v1, v0, Lo/shouldWrap;->onRelationshipValidationResult:Lo/setSpeed;

    const-string v0, "binding.cardTypeIv"

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand_logo_url()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x36

    invoke-static/range {v1 .. v8}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 27
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->asBinder:Landroid/widget/ImageView;

    const-string v1, "binding.nfcLogo"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getNfc_enabled()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "amex"

    .line 1056
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    const-string v1, "binding.centerImage"

    const-string v4, "binding.cardBgPattern"

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->onTransact:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v0, v1}, Lo/setSpeed;->setAlpha(F)V

    goto :goto_2

    .line 33
    :cond_2
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->onTransact:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3d851eb8    # 0.065f

    invoke-virtual {v0, v1}, Lo/setSpeed;->setAlpha(F)V

    .line 36
    :goto_2
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->ICustomTabsCallback()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    if-eqz v0, :cond_6

    .line 37
    iget-object v1, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->card_logo_url:Ljava/lang/String;

    const-string v5, "binding.cardBankLogo"

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v6, v1, Lo/shouldWrap;->onPostMessage:Lo/setSpeed;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->card_logo_url:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x36

    invoke-static/range {v6 .. v13}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_3

    .line 40
    :cond_3
    iget-object v1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v6, v1, Lo/shouldWrap;->onPostMessage:Lo/setSpeed;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    invoke-static/range {v6 .. v13}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 42
    :goto_3
    iget-object v1, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgPattern:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 43
    iget-object v1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v1, v1, Lo/shouldWrap;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lo/setSpeed;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v5, v1, Lo/shouldWrap;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgPattern:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x36

    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_4

    .line 46
    :cond_4
    iget-object v1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v1, v1, Lo/shouldWrap;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/setSpeed;->setVisibility(I)V

    .line 48
    :goto_4
    iget-object v1, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgAssetId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Resources.getSystem()"

    const-string v5, "binding.cardBackgroundView"

    if-eqz v1, :cond_5

    .line 49
    iget-object v1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v6, v1, Lo/shouldWrap;->ICustomTabsCallback:Landroid/view/View;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgAssetId:Ljava/lang/String;

    const-string v0, "it.bgAssetId"

    invoke-static {v7, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2022
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c

    .line 49
    invoke-static/range {v6 .. v12}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_5

    .line 51
    :cond_5
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v6, v0, Lo/shouldWrap;->ICustomTabsCallback:Landroid/view/View;

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3022
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const-string v7, ""

    .line 51
    invoke-static/range {v6 .. v12}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 54
    :cond_6
    :goto_5
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    const-string v1, "binding.cardNumberTv"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->onNavigationEvent:Landroid/widget/TextView;

    const-string v1, "binding.cardNameTv"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCardholder_name()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->extraCallback:Landroid/widget/TextView;

    const-string v1, "binding.cardBankName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getVariant_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public final setTotalCardCount(I)V
    .locals 4

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    .line 63
    iget-object v0, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object v0, v0, Lo/shouldWrap;->asInterface:Landroid/widget/TextView;

    const-string v1, "binding.textViewMoreCards"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more cards"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object p1, p1, Lo/shouldWrap;->asInterface:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object p1, p1, Lo/shouldWrap;->extraCallback:Landroid/widget/TextView;

    const-string v0, "binding.cardBankName"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$invisible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 4013
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lo/onPrimaryNavigationFragmentChanged;->ICustomTabsCallback:Lo/shouldWrap;

    iget-object p1, p1, Lo/shouldWrap;->onPostMessage:Lo/setSpeed;

    const-string v2, "binding.cardBankLogo"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5013
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
