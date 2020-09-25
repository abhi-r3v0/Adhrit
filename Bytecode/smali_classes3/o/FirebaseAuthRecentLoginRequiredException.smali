.class public Lo/FirebaseAuthRecentLoginRequiredException;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lo/FirebaseAuthInvalidCredentialsException;


# instance fields
.field private ICustomTabsCallback:Landroid/widget/Button;

.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lo/FirebaseAuthRecentLoginRequiredException;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lo/toStringMap$newSession;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_android_maxWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/FirebaseAuthRecentLoginRequiredException;->extraCallback:I

    .line 52
    sget p2, Lo/toStringMap$newSession;->SnackbarLayout_maxActionInlineWidth:I

    .line 53
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onMessageChannelReady:I

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private ICustomTabsCallback(III)Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 124
    :goto_0
    iget-object v0, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_2

    .line 126
    :cond_2
    :goto_1
    iget-object p1, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {p1, p2, p3}, Lo/FirebaseAuthRecentLoginRequiredException;->extraCallback(Landroid/view/View;II)V

    :goto_2
    return v1
.end method

.method private static extraCallback(Landroid/view/View;II)V
    .locals 2

    .line 134
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsService$Stub(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Lo/unregisterCallbackListener;->asInterface(Landroid/view/View;)I

    move-result v0

    .line 139
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I

    move-result v1

    .line 135
    invoke-static {p0, v0, p1, v1, p2}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;IIII)V

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    sget v0, Lo/toStringMap$asInterface;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    .line 61
    sget v0, Lo/toStringMap$asInterface;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback:Landroid/widget/Button;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 86
    iget v0, p0, Lo/FirebaseAuthRecentLoginRequiredException;->extraCallback:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lo/FirebaseAuthRecentLoginRequiredException;->extraCallback:I

    if-le v0, v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 87
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/toStringMap$onMessageChannelReady;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onMessageChannelReady;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 95
    iget-object v2, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 98
    iget v5, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onMessageChannelReady:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback:Landroid/widget/Button;

    .line 100
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lo/FirebaseAuthRecentLoginRequiredException;->onMessageChannelReady:I

    if-le v5, v6, :cond_2

    sub-int v1, v0, v1

    .line 101
    invoke-direct {p0, v4, v0, v1}, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback(III)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 107
    :goto_1
    invoke-direct {p0, v3, v0, v0}, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback(III)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 8

    const/4 v0, 0x0

    .line 159
    iget-object v1, v0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 160
    iget-object v1, v0, Lo/FirebaseAuthRecentLoginRequiredException;->onNavigationEvent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0xb4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 162
    iget-object v1, v0, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, v0, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 164
    iget-object v0, v0, Lo/FirebaseAuthRecentLoginRequiredException;->ICustomTabsCallback:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
