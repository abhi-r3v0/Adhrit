.class public final Lo/RuleJsonAdapter;
.super Lo/Sequence;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ICustomTabsCallback:F

.field private extraCallback:Z

.field private onMessageChannelReady:Z

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lo/RuleJsonAdapter;-><init>(Landroid/graphics/drawable/Drawable;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;IB)V
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/Sequence;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lo/RuleJsonAdapter;->ICustomTabsCallback:F

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lo/RuleJsonAdapter;->extraCallback:Z

    .line 53
    iput p2, p0, Lo/RuleJsonAdapter;->onPostMessage:I

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lo/RuleJsonAdapter;->onMessageChannelReady:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 75
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 76
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 78
    iget v4, p0, Lo/RuleJsonAdapter;->ICustomTabsCallback:F

    .line 79
    iget-boolean v5, p0, Lo/RuleJsonAdapter;->onMessageChannelReady:Z

    if-nez v5, :cond_0

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v4, v5, v4

    .line 82
    :cond_0
    iget v5, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    int-to-float v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v4, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 83
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2111
    iget-boolean p1, p0, Lo/RuleJsonAdapter;->extraCallback:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2112
    iput-boolean p1, p0, Lo/RuleJsonAdapter;->extraCallback:Z

    .line 2113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 3

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lo/RuleJsonAdapter;->extraCallback:Z

    .line 92
    iget v0, p0, Lo/RuleJsonAdapter;->ICustomTabsCallback:F

    .line 2118
    iget v1, p0, Lo/RuleJsonAdapter;->onPostMessage:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v2, v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 92
    iput v0, p0, Lo/RuleJsonAdapter;->ICustomTabsCallback:F

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
