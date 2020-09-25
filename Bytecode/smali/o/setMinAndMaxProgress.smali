.class public Lo/setMinAndMaxProgress;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lo/setMaxFrame;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:Z = false


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:F

.field private onMessageChannelReady:Z

.field public onNavigationEvent:Lo/setMinProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setMinProgress<",
            "TDH;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getMaxFrame$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lo/getMaxFrame$extraCallback;

    invoke-direct {v0}, Lo/getMaxFrame$extraCallback;-><init>()V

    iput-object v0, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lo/setMinAndMaxProgress;->extraCallback:F

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lo/setMinAndMaxProgress;->onMessageChannelReady:Z

    .line 48
    iput-boolean v0, p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback:Z

    .line 59
    invoke-direct {p0, p1}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p2, Lo/getMaxFrame$extraCallback;

    invoke-direct {p2}, Lo/getMaxFrame$extraCallback;-><init>()V

    iput-object p2, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lo/setMinAndMaxProgress;->extraCallback:F

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lo/setMinAndMaxProgress;->onMessageChannelReady:Z

    .line 48
    iput-boolean p2, p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback:Z

    .line 64
    invoke-direct {p0, p1}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p2, Lo/getMaxFrame$extraCallback;

    invoke-direct {p2}, Lo/getMaxFrame$extraCallback;-><init>()V

    iput-object p2, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lo/setMinAndMaxProgress;->extraCallback:F

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lo/setMinAndMaxProgress;->onMessageChannelReady:Z

    .line 48
    iput-boolean p2, p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback:Z

    .line 69
    invoke-direct {p0, p1}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 3

    .line 301
    iget-boolean v0, p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(Landroid/content/Context;)V
    .locals 3

    .line 81
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 84
    iget-boolean v0, p0, Lo/setMinAndMaxProgress;->onMessageChannelReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    :try_start_1
    iput-boolean v0, p0, Lo/setMinAndMaxProgress;->onMessageChannelReady:Z

    .line 1059
    new-instance v1, Lo/setMinProgress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/setMinProgress;-><init>(Lo/setMaxFrame;)V

    .line 88
    iput-object v1, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lo/setMinAndMaxProgress;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 102
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 94
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lo/setMinAndMaxProgress;->setColorFilter(I)V

    .line 98
    :cond_2
    sget-boolean v1, Lo/setMinAndMaxProgress;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 103
    throw p1
.end method

.method public static setGlobalLegacyVisibilityHandlingEnabled(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback$Stub:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 149
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 150
    invoke-direct {p0}, Lo/setMinAndMaxProgress;->onMessageChannelReady()V

    .line 4191
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    invoke-virtual {v0}, Lo/setMinProgress;->extraCallback()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 157
    invoke-direct {p0}, Lo/setMinAndMaxProgress;->onMessageChannelReady()V

    .line 5200
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    invoke-virtual {v0}, Lo/setMinProgress;->onPostMessage()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 171
    invoke-direct {p0}, Lo/setMinAndMaxProgress;->onMessageChannelReady()V

    .line 7191
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    invoke-virtual {v0}, Lo/setMinProgress;->extraCallback()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 283
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    iput p1, v0, Lo/getMaxFrame$extraCallback;->onPostMessage:I

    .line 284
    iget-object p1, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    iput p2, p1, Lo/getMaxFrame$extraCallback;->onMessageChannelReady:I

    .line 285
    iget-object p1, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    iget p2, p0, Lo/setMinAndMaxProgress;->extraCallback:F

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-lez v3, :cond_6

    if-nez v0, :cond_0

    goto :goto_2

    .line 9055
    :cond_0
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    .line 9056
    iget v0, p1, Lo/getMaxFrame$extraCallback;->onPostMessage:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, p2

    int-to-float p2, v2

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 9058
    iget v0, p1, Lo/getMaxFrame$extraCallback;->onMessageChannelReady:I

    invoke-static {p2, v0}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 9059
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p1, Lo/getMaxFrame$extraCallback;->onMessageChannelReady:I

    goto :goto_2

    .line 9060
    :cond_3
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_6

    .line 9061
    iget v0, p1, Lo/getMaxFrame$extraCallback;->onMessageChannelReady:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, p2

    int-to-float p2, v1

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 9063
    iget v0, p1, Lo/getMaxFrame$extraCallback;->onPostMessage:I

    invoke-static {p2, v0}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 9064
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p1, Lo/getMaxFrame$extraCallback;->onPostMessage:I

    .line 291
    :cond_6
    :goto_2
    iget-object p1, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    iget p1, p1, Lo/getMaxFrame$extraCallback;->onPostMessage:I

    iget-object p2, p0, Lo/setMinAndMaxProgress;->onPostMessage:Lo/getMaxFrame$extraCallback;

    iget p2, p2, Lo/getMaxFrame$extraCallback;->onMessageChannelReady:I

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 164
    invoke-direct {p0}, Lo/setMinAndMaxProgress;->onMessageChannelReady()V

    .line 6200
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    invoke-virtual {v0}, Lo/setMinProgress;->onPostMessage()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 205
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 8234
    iget-object v1, v0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    invoke-interface {v1}, Lo/getMinFrame;->asBinder()Lo/setMaxFrame;

    move-result-object v1

    iget-object v4, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 8123
    :cond_1
    iget-object v0, v0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    invoke-interface {v0, p1}, Lo/getMinFrame;->onPostMessage(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    return v2

    .line 208
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 297
    invoke-direct {p0}, Lo/setMinAndMaxProgress;->onMessageChannelReady()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    .line 265
    iget v0, p0, Lo/setMinAndMaxProgress;->extraCallback:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iput p1, p0, Lo/setMinAndMaxProgress;->extraCallback:F

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setController(Lo/getMinFrame;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    invoke-virtual {v0, p1}, Lo/setMinProgress;->onNavigationEvent(Lo/getMinFrame;)V

    .line 133
    iget-object p1, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 3226
    iget-object v0, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    invoke-interface {p1}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 133
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHierarchy(Lo/setMaxFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1200
    iget-object v1, v0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v2, Lo/Attribute$onMessageChannelReady;->onPostMessage:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v1, v2}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 1234
    iget-object v1, v0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    invoke-interface {v1}, Lo/getMinFrame;->asBinder()Lo/setMaxFrame;

    move-result-object v1

    iget-object v4, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 1203
    invoke-virtual {v0, v4}, Lo/setMinProgress;->ICustomTabsCallback(Lo/hasMasks;)V

    if-eqz p1, :cond_5

    .line 1204
    move-object v5, p1

    check-cast v5, Lo/setMaxFrame;

    iput-object v5, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    .line 1205
    iget-object v5, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    invoke-interface {v5}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1206
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lo/setMinProgress;->onNavigationEvent(Z)V

    .line 1207
    invoke-virtual {v0, v0}, Lo/setMinProgress;->ICustomTabsCallback(Lo/hasMasks;)V

    if-eqz v1, :cond_3

    .line 1210
    iget-object v0, v0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    invoke-interface {v0, p1}, Lo/getMinFrame;->onNavigationEvent(Lo/setMaxFrame;)V

    .line 111
    :cond_3
    iget-object p1, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2226
    iget-object v0, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    invoke-interface {p1}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 111
    :goto_2
    invoke-super {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2215
    :cond_5
    throw v4
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setMinProgress;->onNavigationEvent(Lo/getMinFrame;)V

    .line 234
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setMinProgress;->onNavigationEvent(Lo/getMinFrame;)V

    .line 221
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setMinProgress;->onNavigationEvent(Lo/getMinFrame;)V

    .line 247
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setMinAndMaxProgress;->onMessageChannelReady(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setMinProgress;->onNavigationEvent(Lo/getMinFrame;)V

    .line 260
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setLegacyVisibilityHandlingEnabled(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lo/setMinAndMaxProgress;->ICustomTabsCallback:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 10119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 311
    iget-object v1, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<no holder set>"

    :goto_0
    const-string v2, "holder"

    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
