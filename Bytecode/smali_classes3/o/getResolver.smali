.class final Lo/getResolver;
.super Lo/FirebaseAuthWeakPasswordException;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lo/FirebaseAuthWebException$onPostMessage;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private ICustomTabsCallback:Landroid/animation/AnimatorSet;

.field private final onMessageChannelReady:Lo/FirebaseAuthWebException$onPostMessage;

.field private onNavigationEvent:Landroid/animation/ValueAnimator;

.field private onPostMessage:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lo/FirebaseAuthWeakPasswordException;-><init>(Lo/FirebaseAuthWebException;)V

    .line 43
    iput-object p0, p0, Lo/getResolver;->onPostMessage:Landroid/text/TextWatcher;

    .line 64
    iput-object p0, p0, Lo/getResolver;->onMessageChannelReady:Lo/FirebaseAuthWebException$onPostMessage;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 8156
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 7054
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 8445
    iget-object v2, p1, Lo/FirebaseAuthWebException;->onMessageChannelReady:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p1, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub$Proxy:Lo/addIdTokenListener;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 9037
    iget-object p1, p0, Lo/getResolver;->onNavigationEvent:Landroid/animation/ValueAnimator;

    .line 7055
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10037
    iget-object p1, p0, Lo/getResolver;->ICustomTabsCallback:Landroid/animation/AnimatorSet;

    .line 7056
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 11037
    :cond_2
    iget-object p1, p0, Lo/getResolver;->ICustomTabsCallback:Landroid/animation/AnimatorSet;

    .line 7059
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 12037
    iget-object p1, p0, Lo/getResolver;->onNavigationEvent:Landroid/animation/ValueAnimator;

    .line 7060
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final extraCallback()V
    .locals 8

    .line 86
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    sget v2, Lo/toStringMap$onNavigationEvent;->mtrl_ic_cancel:I

    .line 87
    invoke-static {v1, v2}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onTransact;->clear_text_end_icon_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-virtual {v0, p0}, Lo/FirebaseAuthWebException;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/getResolver;->onMessageChannelReady:Lo/FirebaseAuthWebException$onPostMessage;

    .line 3630
    iget-object v2, v0, Lo/FirebaseAuthWebException;->ICustomTabsService:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3631
    iget-object v2, v0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 3632
    invoke-interface {v1, v0}, Lo/FirebaseAuthWebException$onPostMessage;->onPostMessage(Lo/FirebaseAuthWebException;)V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4140
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4141
    sget-object v2, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onNavigationEvent:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    .line 4142
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4143
    new-instance v2, Lo/getResolver$2;

    invoke-direct {v2, p0}, Lo/getResolver$2;-><init>(Lo/getResolver;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 4103
    fill-array-data v2, :array_1

    .line 5124
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 5125
    sget-object v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x64

    .line 5126
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5127
    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4104
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lo/getResolver;->ICustomTabsCallback:Landroid/animation/AnimatorSet;

    new-array v6, v0, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    .line 4105
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4106
    iget-object v1, p0, Lo/getResolver;->ICustomTabsCallback:Landroid/animation/AnimatorSet;

    new-instance v2, Lo/getResolver$5;

    invoke-direct {v2, p0}, Lo/getResolver$5;-><init>(Lo/getResolver;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    .line 4113
    fill-array-data v0, :array_2

    .line 6124
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6125
    sget-object v1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onMessageChannelReady:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6126
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6127
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4113
    iput-object v0, p0, Lo/getResolver;->onNavigationEvent:Landroid/animation/ValueAnimator;

    .line 4114
    new-instance v1, Lo/getResolver$4;

    invoke-direct {v1, p0}, Lo/getResolver$4;-><init>(Lo/getResolver;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 16131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 16132
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setAlpha(F)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 15094
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 15186
    iget-object p1, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 15094
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPostMessage(Lo/FirebaseAuthWebException;)V
    .locals 3

    .line 12186
    iget-object v0, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 12069
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 13156
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12069
    :goto_0
    invoke-virtual {p1, v1}, Lo/FirebaseAuthWebException;->setEndIconVisible(Z)V

    .line 12071
    invoke-virtual {p1, v2}, Lo/FirebaseAuthWebException;->setEndIconCheckable(Z)V

    .line 14037
    iget-object p1, p0, Lo/getResolver;->onPostMessage:Landroid/text/TextWatcher;

    .line 12072
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15037
    iget-object p1, p0, Lo/getResolver;->onPostMessage:Landroid/text/TextWatcher;

    .line 12073
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
