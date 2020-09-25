.class public final Lo/layoutDecoratedWithMargins;
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

.field ICustomTabsCallback$Stub:Landroid/view/View;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

.field private ICustomTabsService:Landroid/widget/TextView;

.field public asBinder:Landroid/view/View;

.field public asInterface:Landroid/view/View;

.field public extraCallback:Lo/updateSpecWithExtra;

.field private getInterfaceDescriptor:Landroid/widget/TextView;

.field private newSession:Landroid/widget/ImageView;

.field onMessageChannelReady:Lo/recycleFromEnd;

.field onNavigationEvent:Lo/recycleFromStart;

.field public onPostMessage:Landroid/widget/EditText;

.field public final onRelationshipValidationResult:Lo/onReset;

.field private onTransact:Landroid/content/Context;

.field private postMessage:Lo/evictAll;

.field private requestPostMessageChannel:Landroid/view/View;

.field private updateVisuals:Landroid/view/View;

.field private warmup:Lo/setLayoutStateDirection;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/onReset;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addCardDialogFragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult:Lo/onReset;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "view.context"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->onTransact:Landroid/content/Context;

    const p2, 0x7f0b022c

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.credit_card_text)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/updateSpecWithExtra;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    const p2, 0x7f0b08b5

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.title)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->getInterfaceDescriptor:Landroid/widget/TextView;

    const p2, 0x7f0b082d

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.sub_title)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsService:Landroid/widget/TextView;

    const p2, 0x7f0b048d

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.invalid_card)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0b01b9

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.choose_bank)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const p2, 0x7f0b005e

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.addCard)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/recycleFromEnd;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    const p2, 0x7f0b02ea

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.error_view)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/setLayoutStateDirection;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->warmup:Lo/setLayoutStateDirection;

    const p2, 0x7f0b062a

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.patternEditText)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/recycleFromStart;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->onNavigationEvent:Lo/recycleFromStart;

    const p2, 0x7f0b02b3

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.dummyLayout)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback:Landroid/view/View;

    const p2, 0x7f0b0122

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.brand_type)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->newSession:Landroid/widget/ImageView;

    const p2, 0x7f0b0588

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.monthYear)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    const p2, 0x7f0b00a8

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.back)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub:Landroid/view/View;

    const p2, 0x7f0b062b

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.patternEditTextBackGround)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->asInterface:Landroid/view/View;

    const p2, 0x7f0b0884

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.textBackGroundMask)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->asBinder:Landroid/view/View;

    const p2, 0x7f0b091e

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.trustStrip)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->updateVisuals:Landroid/view/View;

    const p2, 0x7f0b0181

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.card_details_item)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0b050a

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "view.findViewById(R.id.loaderView)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/evictAll;

    iput-object p2, p0, Lo/layoutDecoratedWithMargins;->postMessage:Lo/evictAll;

    const p2, 0x7f0b03cf

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.groupAll)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/layoutDecoratedWithMargins;->requestPostMessageChannel:Landroid/view/View;

    .line 80
    iget-object p1, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    check-cast p1, Landroid/view/View;

    const p2, 0x7f060242

    invoke-static {p1, p2}, Lo/missCount;->onNavigationEvent(Landroid/view/View;I)V

    .line 81
    iget-object p1, p0, Lo/layoutDecoratedWithMargins;->updateVisuals:Landroid/view/View;

    sget-object p2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 9000
    sget-object p2, Lo/isInLayout;->extraCallback:Lo/isResumed;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, "property"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object p2, p2, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getJsonObjectFrom;

    .line 9020
    invoke-interface {p2}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p2

    .line 9000
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "$this$isVisible"

    .line 81
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 10080
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private ICustomTabsService()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    invoke-virtual {v0}, Lo/updateSpecWithExtra;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onTransact:Landroid/content/Context;

    .line 96
    iget-object v1, p0, Lo/layoutDecoratedWithMargins;->newSession:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const p1, 0x7f08039a

    .line 97
    :cond_0
    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    invoke-virtual {v0, p1}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    .line 287
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->requestPostMessageChannel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->postMessage:Lo/evictAll;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final asBinder()V
    .locals 2

    .line 292
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->requestPostMessageChannel:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->postMessage:Lo/evictAll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final asInterface()V
    .locals 2

    .line 283
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult:Lo/onReset;

    .line 8000
    iget-object v0, v0, Lo/onReset;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getContentInsetLeft;

    .line 8031
    iget-object v0, v0, Lo/getContentInsetLeft;->extraCallback:Ljava/lang/String;

    const-string v1, "name"

    invoke-static {v1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 8179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 283
    check-cast v0, Landroid/widget/EditText;

    :goto_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 4

    .line 47
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

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

    .line 181
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    invoke-virtual {v0, p1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 3

    .line 143
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, 0x7f08033a

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 144
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/layoutDecoratedWithMargins$extraCallback;

    invoke-direct {v1, p0, p1}, Lo/layoutDecoratedWithMargins$extraCallback;-><init>(Lo/layoutDecoratedWithMargins;Z)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 14040
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onNavigationEvent:Lo/recycleFromStart;

    const-string v1, "animation"

    .line 13234
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

    .line 10114
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 11040
    :cond_1
    iget-object p1, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    .line 10115
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12040
    invoke-direct {p0}, Lo/layoutDecoratedWithMargins;->ICustomTabsService()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13040
    iget-object p1, p0, Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult:Lo/onReset;

    .line 10116
    invoke-virtual {p1}, Lo/onReset;->onPostMessage()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 4

    .line 45
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

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

    .line 177
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->getInterfaceDescriptor:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

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

    .line 165
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setTextChangeLisener(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub:Landroid/view/View;

    new-instance v1, Lo/layoutDecoratedWithMargins$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/layoutDecoratedWithMargins$onNavigationEvent;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 113
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    move-object v1, p0

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 121
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onNavigationEvent:Lo/recycleFromStart;

    new-instance v1, Lo/layoutDecoratedWithMargins$onPostMessage;

    invoke-direct {v1, p0}, Lo/layoutDecoratedWithMargins$onPostMessage;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 130
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 131
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/layoutDecoratedWithMargins$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/layoutDecoratedWithMargins$ICustomTabsCallback;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 134
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 4179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 135
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 5179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 135
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardNumberWithPattern"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 89
    invoke-virtual {v0, p2}, Lo/updateSpecWithExtra;->setPattern(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Lo/updateSpecWithExtra;->setCardNumberWithPattern(Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lo/layoutDecoratedWithMargins;->warmup:Lo/setLayoutStateDirection;

    invoke-virtual {p1}, Lo/setLayoutStateDirection;->onPostMessage()V

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->warmup:Lo/setLayoutStateDirection;

    invoke-static {v0, p1, p2}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

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

    .line 43
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

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
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/onDisconnectSetValue;)V
    .locals 2
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

    .line 161
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    new-instance v1, Lo/peekValue$onPostMessage;

    invoke-direct {v1, v0, p1}, Lo/peekValue$onPostMessage;-><init>(Landroid/widget/EditText;Lo/onDisconnectSetValue;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 8

    .line 228
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    invoke-direct {p0}, Lo/layoutDecoratedWithMargins;->ICustomTabsService()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    goto :goto_0

    :cond_0
    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    :goto_0
    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 229
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 231
    iget-object v1, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    const/4 v2, 0x1

    new-array v3, v2, [F

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "Resources.getSystem()"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, -0x3db80000    # -50.0f

    .line 7010
    invoke-static {v2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string/jumbo v4, "translationY"

    .line 231
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 232
    iget-object v6, p0, Lo/layoutDecoratedWithMargins;->onTransact:Landroid/content/Context;

    const v7, 0x7f06009f

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lo/layoutDecoratedWithMargins;->onTransact:Landroid/content/Context;

    const v7, 0x7f0601f4

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 233
    move-object v6, p0

    check-cast v6, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v3, [F

    .line 236
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 237
    new-instance v7, Lo/layoutDecoratedWithMargins$onMessageChannelReady;

    invoke-direct {v7, p0}, Lo/layoutDecoratedWithMargins$onMessageChannelReady;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v7, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 245
    new-instance v7, Lo/layoutDecoratedWithMargins$onTransact;

    invoke-direct {v7, p0}, Lo/layoutDecoratedWithMargins$onTransact;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    .line 265
    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v7, v5

    check-cast v4, Landroid/animation/Animator;

    aput-object v4, v7, v2

    check-cast v6, Landroid/animation/Animator;

    aput-object v6, v7, v3

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 266
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public final onTransact()V
    .locals 8

    .line 6153
    iget-object v0, p0, Lo/layoutDecoratedWithMargins;->onMessageChannelReady:Lo/recycleFromEnd;

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 190
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 192
    iget-object v1, p0, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

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

    .line 193
    iget-object v6, p0, Lo/layoutDecoratedWithMargins;->onTransact:Landroid/content/Context;

    const v7, 0x7f0601f4

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v5

    iget-object v6, p0, Lo/layoutDecoratedWithMargins;->onTransact:Landroid/content/Context;

    const v7, 0x7f06009f

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    aput v6, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 194
    new-instance v6, Lo/layoutDecoratedWithMargins$onRelationshipValidationResult;

    invoke-direct {v6, p0}, Lo/layoutDecoratedWithMargins$onRelationshipValidationResult;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v6, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v3, [F

    .line 197
    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 198
    new-instance v7, Lo/layoutDecoratedWithMargins$asBinder;

    invoke-direct {v7, p0}, Lo/layoutDecoratedWithMargins$asBinder;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v7, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    new-instance v7, Lo/layoutDecoratedWithMargins$ICustomTabsCallback$Stub;

    invoke-direct {v7, p0}, Lo/layoutDecoratedWithMargins$ICustomTabsCallback$Stub;-><init>(Lo/layoutDecoratedWithMargins;)V

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    .line 223
    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v7, v5

    check-cast v4, Landroid/animation/Animator;

    aput-object v4, v7, v2

    check-cast v6, Landroid/animation/Animator;

    aput-object v6, v7, v3

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
