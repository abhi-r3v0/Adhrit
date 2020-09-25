.class final Lo/findFirstVisibleItemClosestToEnd$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstVisibleItemClosestToEnd;->setButtonState(Lo/getFirstChildPosition;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getFirstChildPosition;

.field private synthetic extraCallback:Lo/findFirstVisibleItemClosestToEnd;


# direct methods
.method constructor <init>(Lo/findFirstVisibleItemClosestToEnd;Lo/getFirstChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    iput-object p2, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->ICustomTabsCallback:Lo/getFirstChildPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 85
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->ICustomTabsCallback:Lo/getFirstChildPosition;

    sget-object v1, Lo/getFirstChildPosition;->onPostMessage:Lo/getFirstChildPosition;

    const-string v2, "parentView"

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "crossIcon"

    const-string/jumbo v7, "textView"

    const-string v8, "backgroundView"

    if-ne v0, v1, :cond_4

    .line 87
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 89
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v9, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v1, v9}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v0}, Lo/findFirstVisibleItemClosestToEnd;->extraCallback(Lo/findFirstVisibleItemClosestToEnd;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 94
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {v1, v3}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/onChildrenLoaded;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 96
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setX(F)V

    .line 98
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    .line 99
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    return-void

    .line 103
    :cond_4
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->asInterface(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v9, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v1, v9}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v0}, Lo/findFirstVisibleItemClosestToEnd;->extraCallback(Lo/findFirstVisibleItemClosestToEnd;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 109
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v1}, Lo/findFirstVisibleItemClosestToEnd;->asBinder(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v3}, Lo/findFirstVisibleItemClosestToEnd;->asInterface(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 110
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {v1, v3}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/onChildrenLoaded;->getY()F

    move-result v1

    iget-object v2, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v2}, Lo/findFirstVisibleItemClosestToEnd;->onMessageChannelReady(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v3}, Lo/findFirstVisibleItemClosestToEnd;->ICustomTabsCallback(Lo/findFirstVisibleItemClosestToEnd;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 111
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setAlpha(F)V

    .line 112
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    iget-object v3, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v3}, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    float-to-double v7, v3

    mul-double v1, v1, v7

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setX(F)V

    .line 113
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$onPostMessage;->extraCallback:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->crossIcon:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    return-void
.end method
