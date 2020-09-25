.class final Lo/postEvent;
.super Landroid/graphics/drawable/BitmapDrawable;
.source ""


# static fields
.field private static final onNavigationEvent:Landroid/graphics/Paint;


# instance fields
.field private ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

.field private ICustomTabsCallback$Stub:I

.field private asBinder:J

.field private asInterface:Z

.field private final extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

.field private final onMessageChannelReady:Z

.field private final onPostMessage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lo/postEvent;->onNavigationEvent:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$extraCallback;ZZ)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 p2, 0xff

    .line 75
    iput p2, p0, Lo/postEvent;->ICustomTabsCallback$Stub:I

    .line 81
    iput-boolean p6, p0, Lo/postEvent;->onMessageChannelReady:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lo/postEvent;->onPostMessage:F

    .line 84
    iput-object p4, p0, Lo/postEvent;->extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 86
    sget-object p1, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    const/4 p2, 0x1

    if-eq p4, p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 88
    iput-object p3, p0, Lo/postEvent;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-boolean p2, p0, Lo/postEvent;->asInterface:Z

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/postEvent;->asBinder:J

    :cond_1
    return-void
.end method

.method private static ICustomTabsCallback(Landroid/graphics/Point;I)Landroid/graphics/Path;
    .locals 4

    .line 156
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 157
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 159
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 160
    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 161
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    iget p0, v1, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method static ICustomTabsCallback(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;ZZ)V
    .locals 8

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 48
    instance-of v0, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 51
    :cond_0
    new-instance v7, Lo/postEvent;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lo/postEvent;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$extraCallback;ZZ)V

    .line 53
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static onMessageChannelReady(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 95
    iget-boolean v0, p0, Lo/postEvent;->asInterface:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lo/postEvent;->asBinder:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 100
    iput-boolean v1, p0, Lo/postEvent;->asInterface:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lo/postEvent;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lo/postEvent;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_2
    iget v2, p0, Lo/postEvent;->ICustomTabsCallback$Stub:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 109
    invoke-super {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 110
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget v0, p0, Lo/postEvent;->ICustomTabsCallback$Stub:I

    invoke-super {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_3

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 118
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lo/postEvent;->onMessageChannelReady:Z

    if-eqz v0, :cond_4

    .line 1146
    sget-object v0, Lo/postEvent;->onNavigationEvent:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1147
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lo/postEvent;->onPostMessage:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-static {v0, v2}, Lo/postEvent;->ICustomTabsCallback(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v0

    .line 1148
    sget-object v2, Lo/postEvent;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1150
    sget-object v0, Lo/postEvent;->onNavigationEvent:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/postEvent;->extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

    iget v2, v2, Lcom/squareup/picasso/Picasso$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1151
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v1, 0x41700000    # 15.0f

    iget v2, p0, Lo/postEvent;->onPostMessage:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lo/postEvent;->ICustomTabsCallback(Landroid/graphics/Point;I)Landroid/graphics/Path;

    move-result-object v0

    .line 1152
    sget-object v1, Lo/postEvent;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lo/postEvent;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 142
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 124
    iput p1, p0, Lo/postEvent;->ICustomTabsCallback$Stub:I

    .line 125
    iget-object v0, p0, Lo/postEvent;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/postEvent;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
