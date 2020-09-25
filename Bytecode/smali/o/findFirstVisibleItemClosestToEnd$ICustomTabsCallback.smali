.class final Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstVisibleItemClosestToEnd;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/widget/CollapsingButton$animateClick$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;


# direct methods
.method constructor <init>(Lo/findFirstVisibleItemClosestToEnd;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    const-string v0, "it"

    .line 140
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "backgroundView"

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_0

    .line 143
    iget-object v2, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v2, v3}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x41100000    # 9.0f

    mul-float v3, v3, p1

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v3, v6

    sub-float v3, v4, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v2, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v2, v3}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 148
    :goto_0
    iget-object v2, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v2, v3}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v3}, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    sub-float v6, v4, p1

    mul-float v3, v3, v6

    iget-object v7, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v7}, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v3}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget-object v7, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v7}, Lo/findFirstVisibleItemClosestToEnd;->asInterface(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v7, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v3, v7}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v3}, Lo/findFirstVisibleItemClosestToEnd;->extraCallback(Lo/findFirstVisibleItemClosestToEnd;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    iget-object v7, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v7}, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    iget-object v8, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v8}, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p1

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 155
    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v7, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v3, v7}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v7}, Lo/findFirstVisibleItemClosestToEnd;->asBinder(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    iget-object v9, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v9}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v6

    iget-object v10, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v10}, Lo/findFirstVisibleItemClosestToEnd;->asInterface(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p1

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    invoke-virtual {v3, v7}, Landroid/view/View;->setX(F)V

    .line 156
    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v7, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v3, v7}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v7, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {v5, v7}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/onChildrenLoaded;

    const-string v7, "parentView"

    invoke-static {v5, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lo/onChildrenLoaded;->getY()F

    move-result v5

    iget-object v7, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v7}, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    add-float/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-string/jumbo v5, "textView"

    cmpg-double v7, v0, v2

    if-gtz v7, :cond_a

    .line 159
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    mul-float v8, v8, p1

    sub-float/2addr v4, v8

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v2}, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setX(F)V

    return-void

    .line 162
    :cond_a
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "crossIcon"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    mul-float p1, p1, v8

    sub-float/2addr p1, v4

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    .line 164
    iget-object p1, p0, Lo/findFirstVisibleItemClosestToEnd$ICustomTabsCallback;->onMessageChannelReady:Lo/findFirstVisibleItemClosestToEnd;

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {p1, v0}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float v6, v6, v0

    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    return-void

    .line 140
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
