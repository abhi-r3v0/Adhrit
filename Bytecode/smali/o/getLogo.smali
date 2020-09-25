.class public final Lo/getLogo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/stopLoading;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "animation",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/view/View;

.field private ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

.field private ICustomTabsCallback$Stub$Proxy:Lo/evictAll;

.field private ICustomTabsService:Landroid/widget/ImageView;

.field public asBinder:Landroid/view/View;

.field final asInterface:Lo/getTitleMarginEnd;

.field extraCallback:Landroid/view/View;

.field private getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

.field private newSession:Lo/setLayoutStateDirection;

.field public onMessageChannelReady:Lo/updateSpecWithExtra;

.field onNavigationEvent:Lo/recycleFromStart;

.field public onPostMessage:Landroid/view/View;

.field private onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

.field private onTransact:Landroid/content/Context;

.field private requestPostMessageChannel:Landroid/view/View;

.field private warmup:Lo/getMaxEnd;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/getTitleMarginEnd;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fabrikOnboardAddCardFragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/getLogo;->asInterface:Lo/getTitleMarginEnd;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "view.context"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getLogo;->onTransact:Landroid/content/Context;

    const p2, 0x7f0b022c

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.credit_card_text)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/updateSpecWithExtra;

    iput-object p2, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    const p2, 0x7f0b08b5

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.title)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/getLogo;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b082d

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.sub_title)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/getLogo;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b048d

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.invalid_card)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0b01b9

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.choose_bank)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/getLogo;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b005e

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.addCard)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/getMaxEnd;

    iput-object p2, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    const p2, 0x7f0b02ea

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.error_view)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/setLayoutStateDirection;

    iput-object p2, p0, Lo/getLogo;->newSession:Lo/setLayoutStateDirection;

    const p2, 0x7f0b062a

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.patternEditText)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/recycleFromStart;

    iput-object p2, p0, Lo/getLogo;->onNavigationEvent:Lo/recycleFromStart;

    const p2, 0x7f0b02b3

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.dummyLayout)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getLogo;->ICustomTabsCallback:Landroid/view/View;

    const p2, 0x7f0b0122

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.brand_type)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/getLogo;->ICustomTabsService:Landroid/widget/ImageView;

    const p2, 0x7f0b00a8

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.back)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getLogo;->extraCallback:Landroid/view/View;

    const p2, 0x7f0b062b

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.patternEditTextBackGround)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getLogo;->onPostMessage:Landroid/view/View;

    const p2, 0x7f0b0884

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.textBackGroundMask)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getLogo;->asBinder:Landroid/view/View;

    const p2, 0x7f0b0181

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.card_details_item)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0b050a

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.loaderView)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/evictAll;

    iput-object p2, p0, Lo/getLogo;->ICustomTabsCallback$Stub$Proxy:Lo/evictAll;

    const p2, 0x7f0b03cf

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.groupAll)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getLogo;->requestPostMessageChannel:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    invoke-virtual {v0}, Lo/updateSpecWithExtra;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lo/getLogo;->onTransact:Landroid/content/Context;

    .line 98
    iget-object v1, p0, Lo/getLogo;->ICustomTabsService:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const p1, 0x7f08039b

    .line 99
    :cond_0
    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    invoke-virtual {v0, p1}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    .line 242
    iget-object v0, p0, Lo/getLogo;->requestPostMessageChannel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lo/getLogo;->ICustomTabsCallback$Stub$Proxy:Lo/evictAll;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final asBinder()V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/getLogo;->requestPostMessageChannel:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lo/getLogo;->ICustomTabsCallback$Stub$Proxy:Lo/evictAll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final asInterface()V
    .locals 1

    .line 238
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 6179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 238
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 4

    .line 43
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 3130
    iget-object v0, v0, Lo/updateSpecWithExtra;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    .line 4075
    invoke-static {v0, v1, v2, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/CharSequence;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lo/getLogo;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V
    .locals 2

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lo/setLogoDescription;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 80
    sget-object p1, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 79
    :cond_1
    sget-object p1, Lo/getMaxStart;->onPostMessage:Lo/getMaxStart;

    goto :goto_0

    .line 78
    :cond_2
    sget-object p1, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    goto :goto_0

    .line 77
    :cond_3
    sget-object p1, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    .line 82
    :goto_0
    sget-object v0, Lo/getMaxStart;->onPostMessage:Lo/getMaxStart;

    if-ne p1, v0, :cond_4

    .line 83
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_4
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    invoke-virtual {v0, p1}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 3

    .line 141
    iget-object v0, p0, Lo/getLogo;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, 0x7f080339

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 142
    iget-object v0, p0, Lo/getLogo;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/getLogo$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/getLogo$ICustomTabsCallback;-><init>(Lo/getLogo;Z)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 14036
    iget-object v0, p0, Lo/getLogo;->onNavigationEvent:Lo/recycleFromStart;

    const-string v1, "animation"

    .line 13194
    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 11122
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 12036
    :cond_1
    iget-object p1, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    .line 11123
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13036
    iget-object p1, p0, Lo/getLogo;->asInterface:Lo/getTitleMarginEnd;

    .line 11124
    invoke-virtual {p1}, Lo/getTitleMarginEnd;->ICustomTabsCallback()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 4

    .line 41
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 2134
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    .line 3075
    invoke-static {v0, v1, v2, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/getLogo;->onRelationshipValidationResult:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    sget-object v1, Lo/updateSpecWithExtra$onPostMessage;->extraCallback:Lo/updateSpecWithExtra$onPostMessage;

    invoke-virtual {v0, v1}, Lo/updateSpecWithExtra;->setPatternType(Lo/updateSpecWithExtra$onPostMessage;)V

    .line 48
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setPattern(Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setTextChangeLisener(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 112
    invoke-static {}, Lo/VectorEnabledTintResources;->ICustomTabsCallback()Lo/shouldBeUsed;

    sget-object v0, Lo/shouldBeUsed;->onNavigationEvent:Lo/shouldBeUsed;

    .line 116
    iget-object v0, p0, Lo/getLogo;->extraCallback:Landroid/view/View;

    new-instance v1, Lo/getLogo$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/getLogo$onNavigationEvent;-><init>(Lo/getLogo;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 121
    iget-object v0, p0, Lo/getLogo;->onNavigationEvent:Lo/recycleFromStart;

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 130
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    sget-object v1, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 131
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/getLogo$extraCallback;

    invoke-direct {v1, p0}, Lo/getLogo$extraCallback;-><init>(Lo/getLogo;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 134
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 4179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 135
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 5179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 135
    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/getLogo;->asInterface:Lo/getTitleMarginEnd;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "fabrikOnboardAddCardFragment.lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/getLogo$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/getLogo$onMessageChannelReady;-><init>(Lo/getLogo;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lo/getLogo;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lo/getLogo;->getInterfaceDescriptor:Lo/createFullSpanItemFromEnd;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cardNumberWithPattern"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 90
    sget-object v1, Lo/updateSpecWithExtra$onPostMessage;->extraCallback:Lo/updateSpecWithExtra$onPostMessage;

    invoke-virtual {v0, v1}, Lo/updateSpecWithExtra;->setPatternType(Lo/updateSpecWithExtra$onPostMessage;)V

    .line 91
    invoke-virtual {v0, p2}, Lo/updateSpecWithExtra;->setPattern(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setCardNumberWithPattern(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lo/getLogo;->newSession:Lo/setLayoutStateDirection;

    invoke-virtual {p1}, Lo/setLayoutStateDirection;->onPostMessage()V

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lo/getLogo;->newSession:Lo/setLayoutStateDirection;

    invoke-static {v0, p1, p2}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    if-eqz p1, :cond_0

    sget-object p1, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    :goto_0
    invoke-virtual {v0, p1}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 4

    .line 39
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 1125
    iget-object v0, v0, Lo/updateSpecWithExtra;->extraCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    .line 2075
    invoke-static {v0, v1, v2, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 7179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 255
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 8179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 256
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget-object v0, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 9179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 256
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 257
    :cond_0
    iget-object p1, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    .line 10179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 257
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method public final onPostMessage(Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 0

    return-void
.end method

.method public final onTransact()V
    .locals 8

    .line 6152
    iget-object v0, p0, Lo/getLogo;->warmup:Lo/getMaxEnd;

    sget-object v1, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 189
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 191
    iget-object v1, p0, Lo/getLogo;->onMessageChannelReady:Lo/updateSpecWithExtra;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string/jumbo v4, "translationY"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 192
    iget-object v6, p0, Lo/getLogo;->onTransact:Landroid/content/Context;

    const v7, 0x7f0601f4

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lo/getLogo;->onTransact:Landroid/content/Context;

    const v7, 0x7f06009f

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 193
    move-object v6, p0

    check-cast v6, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v3, [F

    .line 196
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 197
    new-instance v7, Lo/getLogo$onPostMessage;

    invoke-direct {v7, p0}, Lo/getLogo$onPostMessage;-><init>(Lo/getLogo;)V

    check-cast v7, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    new-instance v7, Lo/getLogo$ICustomTabsCallback$Stub;

    invoke-direct {v7, p0}, Lo/getLogo$ICustomTabsCallback$Stub;-><init>(Lo/getLogo;)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    .line 221
    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v7, v5

    check-cast v4, Landroid/animation/Animator;

    aput-object v4, v7, v2

    check-cast v6, Landroid/animation/Animator;

    aput-object v6, v7, v3

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 222
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
