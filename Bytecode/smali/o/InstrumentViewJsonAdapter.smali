.class public final Lo/InstrumentViewJsonAdapter;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;,
        Lo/InstrumentViewJsonAdapter$onPostMessage;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:F

.field private extraCallback:Lo/InstrumentViewJsonAdapter$onPostMessage;

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lo/InstrumentViewJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lo/InstrumentViewJsonAdapter;->onNavigationEvent:I

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lo/OrderDetails$onRelationshipValidationResult;->AspectRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    :try_start_0
    sget p2, Lo/OrderDetails$onRelationshipValidationResult;->AspectRatioFrameLayout_resize_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/InstrumentViewJsonAdapter;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    throw p2

    .line 122
    :cond_0
    :goto_0
    new-instance p1, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;-><init>(Lo/InstrumentViewJsonAdapter;Lo/InstrumentViewJsonAdapter$5;)V

    iput-object p1, p0, Lo/InstrumentViewJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/InstrumentViewJsonAdapter;)Lo/InstrumentViewJsonAdapter$onPostMessage;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/InstrumentViewJsonAdapter;->extraCallback:Lo/InstrumentViewJsonAdapter$onPostMessage;

    return-object p0
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 8

    .line 166
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 167
    iget p1, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    .line 175
    iget v4, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 176
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 178
    iget-object p1, p0, Lo/InstrumentViewJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;

    iget p2, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onPostMessage(FFZ)V

    return-void

    .line 182
    :cond_1
    iget v5, p0, Lo/InstrumentViewJsonAdapter;->onNavigationEvent:I

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2

    goto :goto_2

    :cond_2
    cmpl-float p2, v4, p2

    if-gtz p2, :cond_6

    .line 193
    iget p2, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    goto :goto_1

    .line 187
    :cond_3
    iget p1, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    :goto_0
    mul-float v2, v2, p1

    float-to-int p1, v2

    goto :goto_2

    .line 184
    :cond_4
    iget p2, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    :goto_1
    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_2

    :cond_5
    cmpl-float p2, v4, p2

    if-lez p2, :cond_6

    .line 198
    iget p2, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    goto :goto_1

    .line 200
    :cond_6
    iget p1, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    goto :goto_0

    .line 208
    :goto_2
    iget-object p2, p0, Lo/InstrumentViewJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;

    iget v1, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    invoke-virtual {p2, v1, v3, v6}, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onPostMessage(FFZ)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 209
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 210
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 1

    .line 131
    iget v0, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 132
    iput p1, p0, Lo/InstrumentViewJsonAdapter;->ICustomTabsCallback:F

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setAspectRatioListener(Lo/InstrumentViewJsonAdapter$onPostMessage;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/InstrumentViewJsonAdapter;->extraCallback:Lo/InstrumentViewJsonAdapter$onPostMessage;

    return-void
.end method

.method public final setResizeMode(I)V
    .locals 1

    .line 158
    iget v0, p0, Lo/InstrumentViewJsonAdapter;->onNavigationEvent:I

    if-eq v0, p1, :cond_0

    .line 159
    iput p1, p0, Lo/InstrumentViewJsonAdapter;->onNavigationEvent:I

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
