.class public final Lo/getTitleMarginBottom;
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
.field ICustomTabsCallback:Lo/recycleFromStart;

.field final ICustomTabsCallback$Stub:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private ICustomTabsService:Lo/setLayoutStateDirection;

.field final asBinder:Lo/calculateItemDecorationsForChild;

.field private asInterface:Lo/createFullSpanItemFromEnd;

.field public extraCallback:Landroid/view/View;

.field private getInterfaceDescriptor:Lo/recycleFromEnd;

.field private newSession:Landroid/widget/ImageView;

.field public onMessageChannelReady:Landroid/view/View;

.field public onNavigationEvent:Lo/updateSpecWithExtra;

.field public onPostMessage:Landroid/view/View;

.field private onRelationshipValidationResult:Landroid/content/Context;

.field private onTransact:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/calculateItemDecorationsForChild;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardVerifyCardFragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentLifecycle"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/getTitleMarginBottom;->asBinder:Lo/calculateItemDecorationsForChild;

    iput-object p3, p0, Lo/getTitleMarginBottom;->ICustomTabsCallback$Stub:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "view.context"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getTitleMarginBottom;->onRelationshipValidationResult:Landroid/content/Context;

    const p2, 0x7f0b022c

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.credit_card_text)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/updateSpecWithExtra;

    iput-object p2, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    const p2, 0x7f0b082d

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.sub_title)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/getTitleMarginBottom;->asInterface:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b01b9

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.choose_bank)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/createFullSpanItemFromEnd;

    iput-object p2, p0, Lo/getTitleMarginBottom;->onTransact:Lo/createFullSpanItemFromEnd;

    const p2, 0x7f0b005e

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.addCard)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/recycleFromEnd;

    iput-object p2, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    const p2, 0x7f0b02ea

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.error_view)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/setLayoutStateDirection;

    iput-object p2, p0, Lo/getTitleMarginBottom;->ICustomTabsService:Lo/setLayoutStateDirection;

    const p2, 0x7f0b062a

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.patternEditText)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/recycleFromStart;

    iput-object p2, p0, Lo/getTitleMarginBottom;->ICustomTabsCallback:Lo/recycleFromStart;

    const p2, 0x7f0b02b3

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.dummyLayout)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getTitleMarginBottom;->extraCallback:Landroid/view/View;

    const p2, 0x7f0b0122

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.brand_type)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/getTitleMarginBottom;->newSession:Landroid/widget/ImageView;

    const p2, 0x7f0b062b

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.patternEditTextBackGround)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/getTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const p2, 0x7f0b0884

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.textBackGroundMask)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    .line 63
    iget-object p1, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    check-cast p1, Landroid/view/View;

    const p2, 0x7f060220

    invoke-static {p1, p2}, Lo/missCount;->onNavigationEvent(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    invoke-virtual {v0}, Lo/updateSpecWithExtra;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lo/getTitleMarginBottom;->onRelationshipValidationResult:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lo/getTitleMarginBottom;->newSession:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const p1, 0x7f08039b

    .line 82
    :cond_0
    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 81
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    invoke-virtual {v0, p1}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 0

    return-void
.end method

.method public final asBinder()V
    .locals 0

    return-void
.end method

.method public final asInterface()V
    .locals 1

    .line 206
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 6179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 206
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 4

    .line 38
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

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

    .line 148
    iget-object v0, p0, Lo/getTitleMarginBottom;->asInterface:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    invoke-virtual {v0, p1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 3

    .line 112
    iget-object v0, p0, Lo/getTitleMarginBottom;->onTransact:Lo/createFullSpanItemFromEnd;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, 0x7f08033a

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 113
    iget-object v0, p0, Lo/getTitleMarginBottom;->onTransact:Lo/createFullSpanItemFromEnd;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/getTitleMarginBottom$extraCallback;

    invoke-direct {v1, p0, p1}, Lo/getTitleMarginBottom$extraCallback;-><init>(Lo/getTitleMarginBottom;Z)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 13031
    iget-object v0, p0, Lo/getTitleMarginBottom;->ICustomTabsCallback:Lo/recycleFromStart;

    const-string v1, "animation"

    .line 12162
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

    .line 10096
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 11031
    :cond_1
    iget-object p1, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    .line 10097
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12031
    iget-object p1, p0, Lo/getTitleMarginBottom;->asBinder:Lo/calculateItemDecorationsForChild;

    .line 10098
    invoke-interface {p1}, Lo/calculateItemDecorationsForChild;->ICustomTabsCallback()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 4

    .line 36
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

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
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

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

    .line 129
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setTextChangeLisener(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/getTitleMarginBottom;->ICustomTabsCallback:Lo/recycleFromStart;

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 104
    iget-object v0, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 105
    iget-object v0, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/getTitleMarginBottom$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/getTitleMarginBottom$ICustomTabsCallback;-><init>(Lo/getTitleMarginBottom;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 108
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 5179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lo/getTitleMarginBottom;->onTransact:Lo/createFullSpanItemFromEnd;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lo/getTitleMarginBottom;->onTransact:Lo/createFullSpanItemFromEnd;

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

    .line 71
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 72
    sget-object v1, Lo/updateSpecWithExtra$onPostMessage;->extraCallback:Lo/updateSpecWithExtra$onPostMessage;

    invoke-virtual {v0, v1}, Lo/updateSpecWithExtra;->setPatternType(Lo/updateSpecWithExtra$onPostMessage;)V

    .line 73
    invoke-virtual {v0, p2}, Lo/updateSpecWithExtra;->setPattern(Ljava/lang/String;)V

    .line 4179
    iget-object p2, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 74
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/text/Editable;->clear()V

    .line 75
    :cond_0
    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setCardNumberWithPattern(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lo/getTitleMarginBottom;->ICustomTabsService:Lo/setLayoutStateDirection;

    invoke-virtual {p1}, Lo/setLayoutStateDirection;->onPostMessage()V

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lo/getTitleMarginBottom;->ICustomTabsService:Lo/setLayoutStateDirection;

    invoke-static {v0, p1, p2}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    if-eqz p1, :cond_0

    sget-object p1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    :goto_0
    invoke-virtual {v0, p1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 4

    .line 34
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

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

    .line 219
    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 7179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 219
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 8179
    iget-object p1, p1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 220
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget-object v0, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 9179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
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

    .line 6122
    iget-object v0, p0, Lo/getTitleMarginBottom;->getInterfaceDescriptor:Lo/recycleFromEnd;

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 157
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 159
    iget-object v1, p0, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

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

    .line 160
    iget-object v6, p0, Lo/getTitleMarginBottom;->onRelationshipValidationResult:Landroid/content/Context;

    const v7, 0x7f06009f

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lo/getTitleMarginBottom;->onRelationshipValidationResult:Landroid/content/Context;

    const v7, 0x7f0601f4

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 161
    move-object v6, p0

    check-cast v6, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v3, [F

    .line 164
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 165
    new-instance v7, Lo/getTitleMarginBottom$onMessageChannelReady;

    invoke-direct {v7, p0}, Lo/getTitleMarginBottom$onMessageChannelReady;-><init>(Lo/getTitleMarginBottom;)V

    check-cast v7, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    new-instance v7, Lo/getTitleMarginBottom$onNavigationEvent;

    invoke-direct {v7, p0}, Lo/getTitleMarginBottom$onNavigationEvent;-><init>(Lo/getTitleMarginBottom;)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    .line 189
    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v7, v5

    check-cast v4, Landroid/animation/Animator;

    aput-object v4, v7, v2

    check-cast v6, Landroid/animation/Animator;

    aput-object v6, v7, v3

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 190
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
