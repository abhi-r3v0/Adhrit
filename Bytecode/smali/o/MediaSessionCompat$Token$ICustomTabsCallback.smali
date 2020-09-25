.class Lo/MediaSessionCompat$Token$ICustomTabsCallback;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field static onNavigationEvent:Ljava/lang/reflect/Method;


# instance fields
.field ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:Landroid/view/View;

.field onMessageChannelReady:Lo/MediaSessionCompat$Token;

.field onPostMessage:Landroid/view/ViewGroup;

.field private onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 116
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$Token;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 143
    iput-object p2, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    .line 144
    iput-object p3, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->setRight(I)V

    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->setBottom(I)V

    .line 147
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    iput-object p4, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onMessageChannelReady:Lo/MediaSessionCompat$Token;

    return-void
.end method

.method private extraCallback()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onTransact:Z

    .line 228
    iget-object v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private onMessageChannelReady([I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 271
    iget-object v2, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 272
    iget-object v2, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 273
    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    aput v3, p1, v2

    const/4 v2, 0x1

    .line 274
    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 219
    iget-boolean v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onTransact:Z

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 241
    iget-object v2, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    iget-object v2, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 243
    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    aget v1, v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 247
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-object v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 250
    iget-object v1, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4

    .line 299
    iget-object v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 300
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 301
    iget-object v1, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 302
    aput v0, p1, v0

    .line 303
    aput v0, p1, v2

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 305
    invoke-direct {p0, v1}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onMessageChannelReady([I)V

    .line 306
    aget v0, v1, v0

    aget v1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 307
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Landroid/view/View;)V
    .locals 5

    .line 186
    invoke-direct {p0}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onNavigationEvent()V

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 189
    iget-object v1, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v0}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 195
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 196
    iget-object v3, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 197
    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-static {p1, v4}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    const/4 v3, 0x1

    .line 198
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 200
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onPostMessage(Landroid/view/View;)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    invoke-direct {p0}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->extraCallback()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 182
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
