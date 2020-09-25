.class public Lo/removeAllUpdateListeners;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/reverseAnimationSpeed;
.implements Lo/removeAnimatorListener$onPostMessage;


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/removeAllAnimatorListeners;

.field private ICustomTabsCallback$Stub:Landroid/graphics/Rect;

.field private asBinder:I

.field private final asInterface:Lo/loop;

.field private getInterfaceDescriptor:Landroid/graphics/Bitmap$Config;

.field private newSession:I

.field private final onMessageChannelReady:Lo/removeUpdateListener;

.field private final onNavigationEvent:Lo/addAnimatorListener;

.field private final onPostMessage:Lo/setPosition;

.field private final onRelationshipValidationResult:Lo/getRepeatCount;

.field private final onTransact:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lo/removeAllUpdateListeners;

    sput-object v0, Lo/removeAllUpdateListeners;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/setPosition;Lo/addAnimatorListener;Lo/removeAllAnimatorListeners;Lo/removeUpdateListener;Lo/loop;Lo/getRepeatCount;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lo/removeAllUpdateListeners;->getInterfaceDescriptor:Landroid/graphics/Bitmap$Config;

    .line 117
    iput-object p1, p0, Lo/removeAllUpdateListeners;->onPostMessage:Lo/setPosition;

    .line 118
    iput-object p2, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    .line 119
    iput-object p3, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback:Lo/removeAllAnimatorListeners;

    .line 120
    iput-object p4, p0, Lo/removeAllUpdateListeners;->onMessageChannelReady:Lo/removeUpdateListener;

    .line 121
    iput-object p5, p0, Lo/removeAllUpdateListeners;->asInterface:Lo/loop;

    .line 122
    iput-object p6, p0, Lo/removeAllUpdateListeners;->onRelationshipValidationResult:Lo/getRepeatCount;

    .line 124
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/removeAllUpdateListeners;->onTransact:Landroid/graphics/Paint;

    .line 125
    invoke-direct {p0}, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 2

    .line 285
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onMessageChannelReady:Lo/removeUpdateListener;

    invoke-interface {v0}, Lo/removeUpdateListener;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/removeAllUpdateListeners;->asBinder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iput v0, p0, Lo/removeAllUpdateListeners;->asBinder:I

    .line 290
    :cond_1
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onMessageChannelReady:Lo/removeUpdateListener;

    invoke-interface {v0}, Lo/removeUpdateListener;->onPostMessage()I

    move-result v0

    iput v0, p0, Lo/removeAllUpdateListeners;->newSession:I

    if-ne v0, v1, :cond_3

    .line 292
    iget-object v0, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    iput v1, p0, Lo/removeAllUpdateListeners;->newSession:I

    :cond_3
    return-void
.end method

.method private onMessageChannelReady(ILo/getRootAlpha;Landroid/graphics/Canvas;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 337
    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 340
    :cond_0
    iget-object v0, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/removeAllUpdateListeners;->onTransact:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    iget-object v3, p0, Lo/removeAllUpdateListeners;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const/4 p3, 0x3

    if-eq p4, p3, :cond_2

    .line 349
    iget-object p3, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    invoke-interface {p3, p1, p2}, Lo/addAnimatorListener;->onNavigationEvent(ILo/getRootAlpha;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private onNavigationEvent(Landroid/graphics/Canvas;II)Z
    .locals 9

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p3, :cond_5

    if-eq p3, v5, :cond_3

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_0

    .line 231
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return v4

    .line 223
    :cond_0
    :try_start_0
    iget-object p3, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    invoke-interface {p3}, Lo/addAnimatorListener;->onNavigationEvent()Lo/getRootAlpha;

    move-result-object v3

    .line 224
    invoke-direct {p0, p2, v3, p1, v1}, Lo/removeAllUpdateListeners;->onMessageChannelReady(ILo/getRootAlpha;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    goto :goto_1

    .line 208
    :cond_1
    :try_start_1
    iget-object p3, p0, Lo/removeAllUpdateListeners;->onPostMessage:Lo/setPosition;

    iget v6, p0, Lo/removeAllUpdateListeners;->asBinder:I

    iget v7, p0, Lo/removeAllUpdateListeners;->newSession:I

    iget-object v8, p0, Lo/removeAllUpdateListeners;->getInterfaceDescriptor:Landroid/graphics/Bitmap$Config;

    .line 1067
    invoke-virtual {p3, v6, v7, v8}, Lo/setPosition;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Lo/getRootAlpha;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    invoke-direct {p0, p2, v3}, Lo/removeAllUpdateListeners;->onPostMessage(ILo/getRootAlpha;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 218
    invoke-direct {p0, p2, v3, p1, v2}, Lo/removeAllUpdateListeners;->onMessageChannelReady(ILo/getRootAlpha;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v4, 0x1

    :cond_2
    move p3, v4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 213
    sget-object p2, Lo/removeAllUpdateListeners;->extraCallback:Ljava/lang/Class;

    const-string p3, "Failed to create frame bitmap"

    invoke-static {p2, p3, p1}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return v4

    .line 198
    :cond_3
    :try_start_3
    iget-object p3, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    .line 199
    invoke-interface {p3}, Lo/addAnimatorListener;->ICustomTabsCallback()Lo/getRootAlpha;

    move-result-object v3

    .line 201
    invoke-direct {p0, p2, v3}, Lo/removeAllUpdateListeners;->onPostMessage(ILo/getRootAlpha;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 202
    invoke-direct {p0, p2, v3, p1, v5}, Lo/removeAllUpdateListeners;->onMessageChannelReady(ILo/getRootAlpha;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v4, 0x1

    :cond_4
    move p3, v4

    const/4 v1, 0x2

    goto :goto_1

    .line 192
    :cond_5
    iget-object p3, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    invoke-interface {p3, p2}, Lo/addAnimatorListener;->onMessageChannelReady(I)Lo/getRootAlpha;

    move-result-object v3

    .line 193
    invoke-direct {p0, p2, v3, p1, v4}, Lo/removeAllUpdateListeners;->onMessageChannelReady(ILo/getRootAlpha;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    .line 231
    :goto_1
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-nez p3, :cond_7

    if-ne v1, v0, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    goto :goto_0

    :cond_7
    :goto_2
    return p3

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method

.method private onPostMessage(ILo/getRootAlpha;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 308
    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_0
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onMessageChannelReady:Lo/removeUpdateListener;

    .line 313
    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lo/removeUpdateListener;->onPostMessage(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 315
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    :cond_1
    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 260
    iget v0, p0, Lo/removeAllUpdateListeners;->asBinder:I

    return v0
.end method

.method public final ICustomTabsCallback(Landroid/graphics/Rect;)V
    .locals 1

    .line 253
    iput-object p1, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    .line 254
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onMessageChannelReady:Lo/removeUpdateListener;

    invoke-interface {v0, p1}, Lo/removeUpdateListener;->onPostMessage(Landroid/graphics/Rect;)V

    .line 255
    invoke-direct {p0}, Lo/removeAllUpdateListeners;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p2, p3, p1}, Lo/removeAllUpdateListeners;->onNavigationEvent(Landroid/graphics/Canvas;II)Z

    move-result p1

    .line 173
    iget-object p2, p0, Lo/removeAllUpdateListeners;->asInterface:Lo/loop;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lo/removeAllUpdateListeners;->onRelationshipValidationResult:Lo/getRepeatCount;

    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    invoke-interface {p2, v0, v1, p0, p3}, Lo/loop;->extraCallback(Lo/getRepeatCount;Lo/addAnimatorListener;Lo/reverseAnimationSpeed;I)V

    :cond_0
    return p1
.end method

.method public final extraCallback()I
    .locals 1

    .line 143
    iget-object v0, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0}, Lo/removeAllAnimatorListeners;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 275
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    invoke-interface {v0}, Lo/addAnimatorListener;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 153
    iget-object v0, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0}, Lo/removeAllAnimatorListeners;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 148
    iget-object v0, p0, Lo/removeAllUpdateListeners;->ICustomTabsCallback:Lo/removeAllAnimatorListeners;

    invoke-interface {v0, p1}, Lo/removeAllAnimatorListeners;->onNavigationEvent(I)I

    move-result p1

    return p1
.end method

.method public final onPostMessage()I
    .locals 1

    .line 265
    iget v0, p0, Lo/removeAllUpdateListeners;->newSession:I

    return v0
.end method

.method public final onTransact()V
    .locals 1

    .line 1275
    iget-object v0, p0, Lo/removeAllUpdateListeners;->onNavigationEvent:Lo/addAnimatorListener;

    invoke-interface {v0}, Lo/addAnimatorListener;->onMessageChannelReady()V

    return-void
.end method
