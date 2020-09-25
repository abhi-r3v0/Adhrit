.class public final Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;
.super Landroid/view/View;
.source ""


# instance fields
.field extraCallback:I

.field onNavigationEvent:Landroid/view/View;

.field onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    const/4 v0, 0x4

    .line 46
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    .line 50
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    const/4 p1, 0x4

    .line 46
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    .line 55
    invoke-direct {p0, p2}, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    const/4 p1, 0x4

    .line 46
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    .line 60
    invoke-direct {p0, p2}, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private extraCallback(Landroid/util/AttributeSet;)V
    .locals 4

    .line 69
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_placeholder:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 76
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_placeholder_content:I

    if-ne v2, v3, :cond_0

    .line 77
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    goto :goto_1

    .line 79
    :cond_0
    sget v3, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_placeholder_emptyVisibility:I

    if-ne v2, v3, :cond_1

    .line 80
    iget v3, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    .line 122
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xd2

    .line 124
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 125
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 129
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 130
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 133
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v5, "?"

    const/4 v6, 0x1

    .line 135
    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v3, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 138
    invoke-virtual {p1, v5, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setContentId(I)V
    .locals 2

    .line 169
    iget v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 176
    iput-boolean v1, v0, Lo/onChildrenLoaded$onPostMessage;->search:Z

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    .line 180
    :cond_1
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final setEmptyVisibility(I)V
    .locals 0

    .line 95
    iput p1, p0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    return-void
.end method
