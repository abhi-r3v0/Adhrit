.class final Lo/getPromptPosition$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPromptPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPromptPosition$extraCallback$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static extraCallback:Ljava/lang/Integer;


# instance fields
.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LinearLayoutCompat$OrientationMode;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Landroid/view/View;

.field onPostMessage:Lo/getPromptPosition$extraCallback$ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    .line 330
    iput-object p1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    return-void
.end method

.method private static onMessageChannelReady(Landroid/content/Context;)I
    .locals 1

    .line 335
    sget-object v0, Lo/getPromptPosition$extraCallback;->extraCallback:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const-string/jumbo v0, "window"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 338
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 339
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 340
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 341
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lo/getPromptPosition$extraCallback;->extraCallback:Ljava/lang/Integer;

    goto :goto_0

    .line 1029
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_1
    :goto_0
    sget-object p0, Lo/getPromptPosition$extraCallback;->extraCallback:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private onPostMessage(III)I
    .locals 1

    sub-int v0, p2, p3

    if-lez v0, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, p3

    if-lez p1, :cond_1

    return p1

    .line 474
    :cond_1
    iget-object p1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    const/4 p1, 0x4

    const-string p2, "ViewTarget"

    .line 475
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    .line 476
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    iget-object p1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/getPromptPosition$extraCallback;->onMessageChannelReady(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final extraCallback()V
    .locals 6

    .line 358
    iget-object v0, p0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lo/getPromptPosition$extraCallback;->onMessageChannelReady()I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lo/getPromptPosition$extraCallback;->onPostMessage()I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v0, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_5

    if-gtz v1, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-nez v3, :cond_6

    return-void

    .line 3351
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LinearLayoutCompat$OrientationMode;

    .line 3352
    invoke-interface {v3, v0, v1}, Lo/LinearLayoutCompat$OrientationMode;->extraCallback(II)V

    goto :goto_4

    .line 369
    :cond_7
    invoke-virtual {p0}, Lo/getPromptPosition$extraCallback;->onNavigationEvent()V

    return-void
.end method

.method final onMessageChannelReady()I
    .locals 3

    .line 429
    iget-object v0, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    iget-object v1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 432
    :goto_0
    iget-object v2, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lo/getPromptPosition$extraCallback;->onPostMessage(III)I

    move-result v0

    return v0
.end method

.method final onNavigationEvent()V
    .locals 2

    .line 409
    iget-object v0, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lo/getPromptPosition$extraCallback;->onPostMessage:Lo/getPromptPosition$extraCallback$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lo/getPromptPosition$extraCallback;->onPostMessage:Lo/getPromptPosition$extraCallback$ICustomTabsCallback;

    .line 414
    iget-object v0, p0, Lo/getPromptPosition$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final onPostMessage()I
    .locals 3

    .line 422
    iget-object v0, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    iget-object v1, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 425
    :goto_0
    iget-object v2, p0, Lo/getPromptPosition$extraCallback;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lo/getPromptPosition$extraCallback;->onPostMessage(III)I

    move-result v0

    return v0
.end method
