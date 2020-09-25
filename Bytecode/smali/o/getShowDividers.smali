.class public final Lo/getShowDividers;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getShowDividers$ICustomTabsCallback;,
        Lo/getShowDividers$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/AppCompatImageButton;

.field ICustomTabsCallback$Stub:Z

.field ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:Landroid/os/Handler;

.field asBinder:Lo/getShowDividers$ICustomTabsCallback;

.field public asInterface:Landroid/graphics/Bitmap;

.field final extraCallback:Lo/dispatchFitSystemWindows;

.field getInterfaceDescriptor:I

.field private newSession:Z

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getShowDividers$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Z

.field public final onPostMessage:Lo/setSupportImageTintList;

.field onRelationshipValidationResult:Lo/getShowDividers$ICustomTabsCallback;

.field onTransact:Lo/getShowDividers$ICustomTabsCallback;

.field private postMessage:Lo/setTextClassifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setTextClassifier<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field warmup:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lo/setSupportImageTintList;IILo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lo/setSupportImageTintList;",
            "II",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1608
    iget-object v1, p1, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    .line 1619
    iget-object v0, p1, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->onNavigationEvent(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object v2

    .line 2619
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onNavigationEvent(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p1

    .line 3348
    invoke-virtual {p1}, Lo/AppCompatImageButton;->onNavigationEvent()Lo/setTextClassifier;

    move-result-object p1

    sget-object v0, Lo/getFirstBaselineToTopHeight;->ICustomTabsCallback:Lo/getFirstBaselineToTopHeight;

    .line 4052
    new-instance v3, Lo/setHorizontalGravity;

    invoke-direct {v3}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v3, v0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/getFirstBaselineToTopHeight;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    const/4 v3, 0x1

    .line 3351
    invoke-virtual {v0, v3}, Lo/measureChildBeforeLayout;->onPostMessage(Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    .line 3352
    invoke-virtual {v0, v3}, Lo/measureChildBeforeLayout;->extraCallback(Z)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    .line 3353
    invoke-virtual {v0, p3, p4}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(II)Lo/measureChildBeforeLayout;

    move-result-object p3

    .line 3349
    invoke-virtual {p1, p3}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object v4

    move-object v0, p0

    move-object v3, p2

    move-object v5, p5

    move-object v6, p6

    .line 71
    invoke-direct/range {v0 .. v6}, Lo/getShowDividers;-><init>(Lo/dispatchFitSystemWindows;Lo/AppCompatImageButton;Lo/setSupportImageTintList;Lo/setTextClassifier;Lo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Lo/dispatchFitSystemWindows;Lo/AppCompatImageButton;Lo/setSupportImageTintList;Lo/setTextClassifier;Lo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            "Lo/AppCompatImageButton;",
            "Lo/setSupportImageTintList;",
            "Lo/setTextClassifier<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    .line 90
    iput-object p2, p0, Lo/getShowDividers;->ICustomTabsCallback:Lo/AppCompatImageButton;

    .line 92
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 94
    iput-object p1, p0, Lo/getShowDividers;->extraCallback:Lo/dispatchFitSystemWindows;

    .line 95
    iput-object p2, p0, Lo/getShowDividers;->ICustomTabsService:Landroid/os/Handler;

    .line 96
    iput-object p4, p0, Lo/getShowDividers;->postMessage:Lo/setTextClassifier;

    .line 98
    iput-object p3, p0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    .line 100
    invoke-virtual {p0, p5, p6}, Lo/getShowDividers;->ICustomTabsCallback(Lo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onMessageChannelReady(Lo/getShowDividers$ICustomTabsCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lo/getShowDividers;->newSession:Z

    .line 262
    iget-boolean v0, p0, Lo/getShowDividers;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lo/getShowDividers;->ICustomTabsService:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 270
    :cond_0
    iget-boolean v0, p0, Lo/getShowDividers;->onNavigationEvent:Z

    if-nez v0, :cond_1

    .line 271
    iput-object p1, p0, Lo/getShowDividers;->onTransact:Lo/getShowDividers$ICustomTabsCallback;

    return-void

    .line 8328
    :cond_1
    iget-object v0, p1, Lo/getShowDividers$ICustomTabsCallback;->onPostMessage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 9236
    iget-object v0, p0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 9237
    iget-object v2, p0, Lo/getShowDividers;->extraCallback:Lo/dispatchFitSystemWindows;

    invoke-interface {v2, v0}, Lo/dispatchFitSystemWindows;->extraCallback(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 9238
    iput-object v0, p0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    .line 277
    :cond_2
    iget-object v0, p0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    .line 278
    iput-object p1, p0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    .line 281
    iget-object p1, p0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 282
    iget-object v2, p0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getShowDividers$onNavigationEvent;

    .line 283
    invoke-interface {v2}, Lo/getShowDividers$onNavigationEvent;->extraCallback()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 286
    iget-object p1, p0, Lo/getShowDividers;->ICustomTabsService:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 290
    :cond_4
    invoke-direct {p0}, Lo/getShowDividers;->onNavigationEvent()V

    return-void
.end method

.method private onNavigationEvent()V
    .locals 6

    .line 209
    iget-boolean v0, p0, Lo/getShowDividers;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/getShowDividers;->newSession:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lo/getShowDividers;->onTransact:Lo/getShowDividers$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    iput-object v1, p0, Lo/getShowDividers;->onTransact:Lo/getShowDividers$ICustomTabsCallback;

    .line 221
    invoke-direct {p0, v0}, Lo/getShowDividers;->onMessageChannelReady(Lo/getShowDividers$ICustomTabsCallback;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lo/getShowDividers;->newSession:Z

    .line 227
    iget-object v0, p0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v0}, Lo/setSupportImageTintList;->onNavigationEvent()I

    move-result v0

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 230
    iget-object v0, p0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v0}, Lo/setSupportImageTintList;->onMessageChannelReady()V

    .line 231
    new-instance v0, Lo/getShowDividers$ICustomTabsCallback;

    iget-object v4, p0, Lo/getShowDividers;->ICustomTabsService:Landroid/os/Handler;

    iget-object v5, p0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v5}, Lo/setSupportImageTintList;->onPostMessage()I

    move-result v5

    invoke-direct {v0, v4, v5, v2, v3}, Lo/getShowDividers$ICustomTabsCallback;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lo/getShowDividers;->onRelationshipValidationResult:Lo/getShowDividers$ICustomTabsCallback;

    .line 232
    iget-object v0, p0, Lo/getShowDividers;->postMessage:Lo/setTextClassifier;

    .line 6359
    new-instance v2, Lo/setSoftInputMode;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    .line 7134
    new-instance v3, Lo/setHorizontalGravity;

    invoke-direct {v3}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v3, v2}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/AppCompatImageHelper;)Lo/measureChildBeforeLayout;

    move-result-object v2

    check-cast v2, Lo/setHorizontalGravity;

    .line 232
    invoke-virtual {v0, v2}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object v0

    iget-object v2, p0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-virtual {v0, v2}, Lo/setTextClassifier;->ICustomTabsCallback(Ljava/lang/Object;)Lo/setTextClassifier;

    move-result-object v0

    iget-object v2, p0, Lo/getShowDividers;->onRelationshipValidationResult:Lo/getShowDividers$ICustomTabsCallback;

    .line 7599
    invoke-static {}, Lo/setAnchorView;->onPostMessage()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 7608
    invoke-virtual {v0, v2, v1, v0, v3}, Lo/setTextClassifier;->extraCallback(Lo/ListPopupWindow;Lo/layoutVertical;Lo/measureChildBeforeLayout;Ljava/util/concurrent/Executor;)Lo/ListPopupWindow;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 105
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lo/getShowDividers;->postMessage:Lo/setTextClassifier;

    new-instance v1, Lo/setHorizontalGravity;

    invoke-direct {v1}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v1, p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/AppCompatRadioButton;)Lo/measureChildBeforeLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    iput-object p1, p0, Lo/getShowDividers;->postMessage:Lo/setTextClassifier;

    .line 108
    invoke-static {p2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lo/getShowDividers;->getInterfaceDescriptor:I

    .line 109
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lo/getShowDividers;->ICustomTabsCallback$Stub$Proxy:I

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lo/getShowDividers;->warmup:I

    return-void

    .line 6029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final ICustomTabsCallback(Lo/getShowDividers$onNavigationEvent;)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lo/getShowDividers;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 129
    iget-object v1, p0, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 6171
    iget-boolean p1, p0, Lo/getShowDividers;->onNavigationEvent:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 6174
    iput-boolean p1, p0, Lo/getShowDividers;->onNavigationEvent:Z

    const/4 p1, 0x0

    .line 6175
    iput-boolean p1, p0, Lo/getShowDividers;->ICustomTabsCallback$Stub:Z

    .line 6177
    invoke-direct {p0}, Lo/getShowDividers;->onNavigationEvent()V

    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 9302
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9303
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getShowDividers$ICustomTabsCallback;

    .line 9304
    invoke-direct {p0, p1}, Lo/getShowDividers;->onMessageChannelReady(Lo/getShowDividers$ICustomTabsCallback;)V

    return v1

    .line 9306
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9307
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getShowDividers$ICustomTabsCallback;

    .line 9308
    iget-object v0, p0, Lo/getShowDividers;->ICustomTabsCallback:Lo/AppCompatImageButton;

    invoke-virtual {v0, p1}, Lo/AppCompatImageButton;->onMessageChannelReady(Lo/ListPopupWindow;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
