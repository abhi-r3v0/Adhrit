.class public final Lo/RecyclerView$LayoutParams;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecyclerView$LayoutParams$extraCallback;,
        Lo/RecyclerView$LayoutParams$ICustomTabsCallback;,
        Lo/RecyclerView$LayoutParams$onMessageChannelReady;,
        Lo/RecyclerView$LayoutParams$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "thread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "paramThrowable",
        "",
        "uncaughtException"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public volatile ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:J

.field private ICustomTabsService$Stub:Landroid/graphics/Canvas;

.field private ICustomTabsService$Stub$Proxy:Landroid/graphics/Paint;

.field private IPostMessageService:Landroid/graphics/Paint;

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Lo/RecyclerView$LayoutParams$onMessageChannelReady;

.field private asBinder:I

.field private asInterface:I

.field private cancelAll:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Landroid/media/SoundPool;

.field private extraCommand:I

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:[I

.field private newSession:I

.field private notify:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public onMessageChannelReady:Ljava/lang/Thread;

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private updateVisuals:[I

.field private validateRelationship:Landroid/graphics/Paint;

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lo/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lo/RecyclerView$LayoutParams;->onPostMessage:I

    .line 39
    iput v0, p0, Lo/RecyclerView$LayoutParams;->onNavigationEvent:I

    .line 52
    sget-object v0, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    iput-object v0, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

    const/4 v0, 0x3

    .line 59
    iput v0, p0, Lo/RecyclerView$LayoutParams;->asInterface:I

    const/16 v0, 0x25

    .line 70
    iput v0, p0, Lo/RecyclerView$LayoutParams;->getInterfaceDescriptor:I

    const/16 v0, 0x9

    .line 76
    iput v0, p0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lo/RecyclerView$LayoutParams;->postMessage:I

    if-eqz p2, :cond_0

    .line 108
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, p0, Lo/RecyclerView$LayoutParams;->asBinder:I

    .line 109
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p0, Lo/RecyclerView$LayoutParams;->onTransact:I

    .line 14009
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v1, "Resources.getSystem()"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v2, 0x41400000    # 12.0f

    .line 14010
    invoke-static {v0, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 111
    iput p2, p0, Lo/RecyclerView$LayoutParams;->newSession:I

    .line 113
    iget v2, p0, Lo/RecyclerView$LayoutParams;->asBinder:I

    div-int/2addr v2, p2

    iput v2, p0, Lo/RecyclerView$LayoutParams;->getInterfaceDescriptor:I

    .line 115
    iget v2, p0, Lo/RecyclerView$LayoutParams;->onTransact:I

    div-int/2addr v2, p2

    iput v2, p0, Lo/RecyclerView$LayoutParams;->warmup:I

    .line 15140
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xe

    .line 15141
    invoke-virtual {p2, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/4 v2, 0x4

    .line 15142
    invoke-virtual {p2, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 15143
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 15144
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 15145
    invoke-virtual {v2, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p2

    const/16 v2, 0xa

    .line 15146
    invoke-virtual {p2, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p2

    .line 15147
    invoke-virtual {p2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p2

    iput-object p2, p0, Lo/RecyclerView$LayoutParams;->extraCallback:Landroid/media/SoundPool;

    if-eqz p2, :cond_1

    .line 14155
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120012

    invoke-virtual {p2, v2, v3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lo/RecyclerView$LayoutParams;->onPostMessage:I

    .line 14157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12003e

    invoke-virtual {p2, v2, v3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lo/RecyclerView$LayoutParams;->onNavigationEvent:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14161
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :cond_1
    :goto_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/RecyclerView$LayoutParams;->validateRelationship:Landroid/graphics/Paint;

    .line 122
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object p2, p0, Lo/RecyclerView$LayoutParams;->validateRelationship:Landroid/graphics/Paint;

    const v2, 0x7f060150

    invoke-static {p1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService$Stub$Proxy:Landroid/graphics/Paint;

    .line 125
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object p2, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService$Stub$Proxy:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService:Landroid/graphics/Paint;

    .line 128
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object p2, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService:Landroid/graphics/Paint;

    .line 16009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 16010
    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 129
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object p2, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService:Landroid/graphics/Paint;

    const v1, 0x7f0601a9

    invoke-static {p1, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xc8

    new-array p2, p1, [I

    .line 133
    iput-object p2, p0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    new-array p1, p1, [I

    .line 134
    iput-object p1, p0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 136
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, -0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 8

    .line 241
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 243
    :cond_0
    iget v1, p0, Lo/RecyclerView$LayoutParams;->getInterfaceDescriptor:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lo/RecyclerView$LayoutParams;->onRelationshipValidationResult:I

    .line 244
    iget v1, p0, Lo/RecyclerView$LayoutParams;->warmup:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub$Proxy:I

    .line 245
    iget-object v1, p0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    .line 471
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v1, v5

    .line 245
    iget v7, p0, Lo/RecyclerView$LayoutParams;->onRelationshipValidationResult:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    .line 473
    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    aget v6, v1, v5

    .line 245
    iget v7, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_0

    :cond_7
    return-void
.end method

.method private final ICustomTabsCallback(IILandroid/graphics/Paint;)V
    .locals 6

    .line 376
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService$Stub:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-string v1, "canvas"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lo/RecyclerView$LayoutParams;->newSession:I

    mul-int v2, p1, v1

    int-to-float v2, v2

    mul-int v3, p2, v1

    int-to-float v3, v3

    mul-int p1, p1, v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    mul-int p2, p2, v1

    add-int/2addr p2, v1

    int-to-float v4, p2

    move v1, v2

    move v2, v3

    move v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final extraCallback()V
    .locals 5

    const/4 v0, 0x3

    .line 225
    iput v0, p0, Lo/RecyclerView$LayoutParams;->asInterface:I

    .line 226
    iget-object v1, p0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    const-string v2, "$this$fill"

    .line 7431
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 7432
    invoke-static {v1, v4, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 227
    iget-object v1, p0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    .line 8431
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8432
    invoke-static {v1, v4, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 228
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    iget v1, p0, Lo/RecyclerView$LayoutParams;->getInterfaceDescriptor:I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v4

    .line 229
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    iget v1, p0, Lo/RecyclerView$LayoutParams;->warmup:I

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v4

    .line 232
    invoke-direct {p0}, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback()V

    .line 235
    iput v4, p0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    const/4 v0, 0x1

    .line 236
    iput v0, p0, Lo/RecyclerView$LayoutParams;->postMessage:I

    const/16 v0, 0x9

    .line 237
    iput v0, p0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    return-void
.end method

.method private onNavigationEvent()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 454
    iget v2, p0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 11043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "snake_game_score"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 455
    iget v2, p0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "snake_game_speed"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    .line 455
    iget v2, p0, Lo/RecyclerView$LayoutParams;->postMessage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "snake_game_level"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 454
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 457
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->cancelAll:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 458
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "md5"

    invoke-static {v1, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "s_checksum"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string/jumbo v0, "snake_game_screen"

    .line 462
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method private onPostMessage()V
    .locals 7

    .line 349
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const-string v1, "holder"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "holder.surface"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const-string v1, "holder.lockCanvas()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService$Stub:Landroid/graphics/Canvas;

    const-string v1, "canvas"

    if-nez v0, :cond_0

    .line 352
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0601a9

    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x0

    .line 356
    iget v2, p0, Lo/RecyclerView$LayoutParams;->asInterface:I

    :goto_0
    if-ge v0, v2, :cond_2

    .line 357
    iget-object v3, p0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    aget v3, v3, v0

    iget-object v4, p0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v4, v4, v0

    iget-object v5, p0, Lo/RecyclerView$LayoutParams;->validateRelationship:Landroid/graphics/Paint;

    iget-object v6, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService:Landroid/graphics/Paint;

    if-ltz v3, :cond_1

    if-ltz v4, :cond_1

    .line 9370
    invoke-direct {p0, v3, v4, v5}, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback(IILandroid/graphics/Paint;)V

    .line 9371
    invoke-direct {p0, v3, v4, v6}, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback(IILandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_2
    iget v0, p0, Lo/RecyclerView$LayoutParams;->onRelationshipValidationResult:I

    iget v2, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub$Proxy:I

    iget-object v3, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService$Stub$Proxy:Landroid/graphics/Paint;

    iget-object v4, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService:Landroid/graphics/Paint;

    if-ltz v0, :cond_3

    if-ltz v2, :cond_3

    .line 10370
    invoke-direct {p0, v0, v2, v3}, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback(IILandroid/graphics/Paint;)V

    .line 10371
    invoke-direct {p0, v0, v2, v4}, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback(IILandroid/graphics/Paint;)V

    .line 364
    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService$Stub:Landroid/graphics/Canvas;

    if-nez v2, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/RecyclerView$LayoutParams$ICustomTabsCallback;)V
    .locals 5

    const-string/jumbo v0, "turn"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lo/addPosition;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    .line 432
    iget-object p1, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

    sget-object v4, Lo/addPosition;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    .line 436
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 435
    :cond_1
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    .line 434
    :cond_2
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    .line 433
    :cond_3
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    .line 432
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 425
    :cond_5
    iget-object p1, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

    sget-object v4, Lo/addPosition;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    if-ne p1, v0, :cond_6

    .line 429
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 428
    :cond_7
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->onMessageChannelReady:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    .line 427
    :cond_8
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->onPostMessage:Lo/RecyclerView$LayoutParams$extraCallback;

    goto :goto_0

    .line 426
    :cond_9
    sget-object p1, Lo/RecyclerView$LayoutParams$extraCallback;->extraCallback:Lo/RecyclerView$LayoutParams$extraCallback;

    .line 423
    :goto_0
    iput-object p1, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 10447
    invoke-direct {p0}, Lo/RecyclerView$LayoutParams;->onNavigationEvent()V

    .line 10448
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->extraCallback:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 10449
    iput-object v0, p0, Lo/RecyclerView$LayoutParams;->extraCallback:Landroid/media/SoundPool;

    .line 10450
    iput-object v0, p0, Lo/RecyclerView$LayoutParams;->onMessageChannelReady:Ljava/lang/Thread;

    .line 443
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "snake_game_duration"

    .line 204
    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback:Z

    const-wide/16 v0, 0x0

    .line 206
    iput-wide v0, p0, Lo/RecyclerView$LayoutParams;->ICustomTabsService:J

    .line 207
    new-instance v0, Ljava/lang/Thread;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lo/RecyclerView$LayoutParams;->onMessageChannelReady:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "snake engine"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->onMessageChannelReady:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7167
    :cond_1
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->onMessageChannelReady:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_2
    return-void
.end method

.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    .line 177
    :cond_0
    :goto_0
    iget-boolean v1, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1b

    .line 178
    iget-boolean v1, v0, Lo/RecyclerView$LayoutParams;->IPostMessageService$Stub:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 179
    invoke-direct/range {p0 .. p0}, Lo/RecyclerView$LayoutParams;->extraCallback()V

    .line 180
    iput-boolean v2, v0, Lo/RecyclerView$LayoutParams;->IPostMessageService$Stub:Z

    .line 2386
    :cond_1
    iget-wide v3, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsService:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v1, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    .line 2390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    iget v7, v0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    int-to-long v7, v7

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsService:J

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 4302
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v3, v3, v1

    .line 4303
    iget-object v4, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    aget v4, v4, v1

    .line 4304
    iget-object v5, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

    sget-object v6, Lo/addPosition;->onPostMessage:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v2, :cond_6

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_4

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    :goto_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    .line 4315
    :goto_3
    iget v10, v0, Lo/RecyclerView$LayoutParams;->getInterfaceDescriptor:I

    if-ne v4, v10, :cond_8

    const/4 v9, 0x1

    :cond_8
    if-ne v3, v5, :cond_9

    const/4 v9, 0x1

    .line 4317
    :cond_9
    iget v10, v0, Lo/RecyclerView$LayoutParams;->warmup:I

    if-ne v3, v10, :cond_a

    const/4 v9, 0x1

    .line 4320
    :cond_a
    iget v10, v0, Lo/RecyclerView$LayoutParams;->asInterface:I

    sub-int/2addr v10, v8

    :goto_4
    if-lez v10, :cond_c

    if-le v10, v8, :cond_b

    .line 4321
    iget-object v11, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    aget v11, v11, v10

    if-ne v4, v11, :cond_b

    iget-object v11, v0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v11, v11, v10

    if-ne v3, v11, :cond_b

    const/4 v9, 0x1

    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_c
    if-eqz v9, :cond_f

    .line 3331
    invoke-direct/range {p0 .. p0}, Lo/RecyclerView$LayoutParams;->onNavigationEvent()V

    .line 3333
    iget-object v11, v0, Lo/RecyclerView$LayoutParams;->extraCallback:Landroid/media/SoundPool;

    if-eqz v11, :cond_d

    iget v12, v0, Lo/RecyclerView$LayoutParams;->onNavigationEvent:I

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v11 .. v17}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3334
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    const-wide/16 v9, 0xc8

    invoke-static {v3, v9, v10}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 3335
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->validateRelationship:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3336
    invoke-direct/range {p0 .. p0}, Lo/RecyclerView$LayoutParams;->onPostMessage()V

    const-wide/16 v3, 0x1f4

    .line 3337
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 5215
    invoke-direct/range {p0 .. p0}, Lo/RecyclerView$LayoutParams;->extraCallback()V

    .line 5217
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->validateRelationship:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v9, 0x7f060150

    invoke-static {v4, v9}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsService:J

    .line 5220
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->IPostMessageService$Stub$Proxy:Lo/RecyclerView$LayoutParams$onMessageChannelReady;

    if-eqz v3, :cond_f

    iget v4, v0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    invoke-interface {v3, v4}, Lo/RecyclerView$LayoutParams$onMessageChannelReady;->onPostMessage(I)V

    .line 5275
    :cond_f
    iget v3, v0, Lo/RecyclerView$LayoutParams;->asInterface:I

    :goto_5
    if-lez v3, :cond_10

    .line 5278
    iget-object v4, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    add-int/lit8 v9, v3, -0x1

    aget v10, v4, v9

    aput v10, v4, v3

    .line 5279
    iget-object v4, v0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v9, v4, v9

    aput v9, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 5286
    :cond_10
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub:Lo/RecyclerView$LayoutParams$extraCallback;

    sget-object v4, Lo/addPosition;->extraCallback:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_14

    if-eq v3, v8, :cond_13

    if-eq v3, v7, :cond_12

    if-eq v3, v6, :cond_11

    goto :goto_6

    .line 5293
    :cond_11
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    aget v4, v3, v1

    add-int/2addr v4, v5

    aput v4, v3, v1

    goto :goto_6

    .line 5291
    :cond_12
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v4, v3, v1

    add-int/2addr v4, v2

    aput v4, v3, v1

    goto :goto_6

    .line 5289
    :cond_13
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    aget v4, v3, v1

    add-int/2addr v4, v2

    aput v4, v3, v1

    goto :goto_6

    .line 5287
    :cond_14
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v4, v3, v1

    add-int/2addr v4, v5

    aput v4, v3, v1

    .line 3342
    :goto_6
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    aget v3, v3, v1

    iget v4, v0, Lo/RecyclerView$LayoutParams;->onRelationshipValidationResult:I

    if-ne v3, v4, :cond_1a

    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->updateVisuals:[I

    aget v1, v3, v1

    iget v3, v0, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v1, v3, :cond_1a

    .line 6251
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_15
    const-wide/16 v3, 0xa

    .line 7014
    invoke-static {v1, v3, v4}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 6253
    iget v1, v0, Lo/RecyclerView$LayoutParams;->asInterface:I

    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->mayLaunchUrl:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    .line 6254
    iput v1, v0, Lo/RecyclerView$LayoutParams;->asInterface:I

    .line 6257
    :cond_16
    invoke-direct/range {p0 .. p0}, Lo/RecyclerView$LayoutParams;->ICustomTabsCallback()V

    .line 6259
    iget v1, v0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    add-int/2addr v1, v2

    iput v1, v0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    .line 6260
    iget-object v3, v0, Lo/RecyclerView$LayoutParams;->IPostMessageService$Stub$Proxy:Lo/RecyclerView$LayoutParams$onMessageChannelReady;

    if-eqz v3, :cond_17

    invoke-interface {v3, v1}, Lo/RecyclerView$LayoutParams$onMessageChannelReady;->onPostMessage(I)V

    .line 6261
    :cond_17
    iget v1, v0, Lo/RecyclerView$LayoutParams;->requestPostMessageChannel:I

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_19

    .line 6262
    iget v1, v0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_18

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    goto :goto_7

    :cond_18
    iput v3, v0, Lo/RecyclerView$LayoutParams;->extraCommand:I

    .line 6263
    :goto_7
    iget v1, v0, Lo/RecyclerView$LayoutParams;->postMessage:I

    add-int/2addr v1, v2

    iput v1, v0, Lo/RecyclerView$LayoutParams;->postMessage:I

    .line 6266
    :cond_19
    iget-object v2, v0, Lo/RecyclerView$LayoutParams;->extraCallback:Landroid/media/SoundPool;

    if-eqz v2, :cond_1a

    iget v3, v0, Lo/RecyclerView$LayoutParams;->onPostMessage:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 185
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lo/RecyclerView$LayoutParams;->onPostMessage()V

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public final setListener(Lo/RecyclerView$LayoutParams$onMessageChannelReady;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService$Stub$Proxy:Lo/RecyclerView$LayoutParams$onMessageChannelReady;

    return-void
.end method

.method public final setMutableMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lo/RecyclerView$LayoutParams;->cancelAll:Ljava/util/HashMap;

    return-void
.end method

.method public final setScoreListener(Lo/RecyclerView$LayoutParams$onMessageChannelReady;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lo/RecyclerView$LayoutParams;->IPostMessageService$Stub$Proxy:Lo/RecyclerView$LayoutParams$onMessageChannelReady;

    return-void
.end method

.method public final setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/RecyclerView$LayoutParams;->notify:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 16169
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 17165
    iget-object v0, p0, Lo/RecyclerView$LayoutParams;->notify:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 16171
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 18022
    :cond_0
    invoke-direct {p0}, Lo/RecyclerView$LayoutParams;->onNavigationEvent()V

    return-void
.end method
