.class public final Lo/onTouch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onTouch$onPostMessage;,
        Lo/onTouch$onNavigationEvent;,
        Lo/onTouch$extraCallback;,
        Lo/onTouch$ICustomTabsCallback;,
        Lo/onTouch$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/onTouch$onMessageChannelReady;

.field public static final onMessageChannelReady:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static onPostMessage:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Lo/onTouch$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onTouch$ICustomTabsCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/dispatchFitSystemWindows;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lo/onTouch$5;

    invoke-direct {v1}, Lo/onTouch$5;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 57
    invoke-static {v2, v0, v1}, Lo/setInternalImageTint;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/onTouch;->onMessageChannelReady:Lo/setInternalImageTint;

    const/4 v0, 0x2

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lo/onTouch$4;

    invoke-direct {v1}, Lo/onTouch$4;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 87
    invoke-static {v2, v0, v1}, Lo/setInternalImageTint;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;Lo/setInternalImageTint$onMessageChannelReady;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/onTouch;->onPostMessage:Lo/setInternalImageTint;

    .line 110
    new-instance v0, Lo/onTouch$onMessageChannelReady;

    invoke-direct {v0}, Lo/onTouch$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/onTouch;->ICustomTabsCallback:Lo/onTouch$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Lo/dispatchFitSystemWindows;Lo/onTouch$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            "Lo/onTouch$ICustomTabsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 131
    sget-object v0, Lo/onTouch;->ICustomTabsCallback:Lo/onTouch$onMessageChannelReady;

    invoke-direct {p0, p1, p2, v0}, Lo/onTouch;-><init>(Lo/dispatchFitSystemWindows;Lo/onTouch$ICustomTabsCallback;Lo/onTouch$onMessageChannelReady;)V

    return-void
.end method

.method private constructor <init>(Lo/dispatchFitSystemWindows;Lo/onTouch$ICustomTabsCallback;Lo/onTouch$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            "Lo/onTouch$ICustomTabsCallback<",
            "TT;>;",
            "Lo/onTouch$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lo/onTouch;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    .line 140
    iput-object p2, p0, Lo/onTouch;->extraCallback:Lo/onTouch$ICustomTabsCallback;

    return-void
.end method

.method private static extraCallback(Landroid/media/MediaMetadataRetriever;JIIILo/drawSelectorCompat;)Landroid/graphics/Bitmap;
    .locals 9

    const/16 v0, 0x12

    .line 235
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 239
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 243
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    .line 254
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Lo/drawSelectorCompat;->onPostMessage(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    .line 256
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    .line 257
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 259
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "VideoDecoder"

    .line 266
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Exception trying to decode frame on oreo+"

    .line 267
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/dispatchFitSystemWindows;)Lo/applySupportImageTint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            ")",
            "Lo/applySupportImageTint<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lo/onTouch;

    new-instance v1, Lo/onTouch$extraCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/onTouch$extraCallback;-><init>(B)V

    invoke-direct {v0, p0, v1}, Lo/onTouch;-><init>(Lo/dispatchFitSystemWindows;Lo/onTouch$ICustomTabsCallback;)V

    return-object v0
.end method

.method public static onNavigationEvent(Lo/dispatchFitSystemWindows;)Lo/applySupportImageTint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            ")",
            "Lo/applySupportImageTint<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Lo/onTouch;

    new-instance v1, Lo/onTouch$onNavigationEvent;

    invoke-direct {v1}, Lo/onTouch$onNavigationEvent;-><init>()V

    invoke-direct {v0, p0, v1}, Lo/onTouch;-><init>(Lo/dispatchFitSystemWindows;Lo/onTouch$ICustomTabsCallback;)V

    return-object v0
.end method

.method public static onPostMessage(Lo/dispatchFitSystemWindows;)Lo/applySupportImageTint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            ")",
            "Lo/applySupportImageTint<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Lo/onTouch;

    new-instance v1, Lo/onTouch$onPostMessage;

    invoke-direct {v1}, Lo/onTouch$onPostMessage;-><init>()V

    invoke-direct {v0, p0, v1}, Lo/onTouch;-><init>(Lo/dispatchFitSystemWindows;Lo/onTouch$ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    sget-object v0, Lo/onTouch;->onMessageChannelReady:Lo/setInternalImageTint;

    .line 1027
    iget-object v1, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, v0, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 156
    :goto_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gez v2, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v2, v8, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_2
    :goto_1
    sget-object v0, Lo/onTouch;->onPostMessage:Lo/setInternalImageTint;

    .line 2027
    iget-object v1, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 2101
    :cond_3
    iget-object v0, v0, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 161
    :goto_2
    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    const/4 v0, 0x2

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    :cond_4
    sget-object v1, Lo/drawSelectorCompat;->asBinder:Lo/setInternalImageTint;

    .line 3027
    iget-object v2, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v2, v1}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p4, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p4, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_3

    .line 3101
    :cond_5
    iget-object p4, v1, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 165
    :goto_3
    check-cast p4, Lo/drawSelectorCompat;

    if-nez p4, :cond_6

    .line 167
    sget-object p4, Lo/drawSelectorCompat;->onMessageChannelReady:Lo/drawSelectorCompat;

    :cond_6
    move-object v7, p4

    .line 3282
    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 173
    :try_start_0
    iget-object v1, p0, Lo/onTouch;->extraCallback:Lo/onTouch$ICustomTabsCallback;

    invoke-interface {v1, p4, p1}, Lo/onTouch$ICustomTabsCallback;->onNavigationEvent(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 4208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_7

    const/high16 v1, -0x80000000

    if-eq p2, v1, :cond_7

    if-eq p3, v1, :cond_7

    sget-object v1, Lo/drawSelectorCompat;->onPostMessage:Lo/drawSelectorCompat;

    if-eq v7, v1, :cond_7

    move-object v1, p4

    move-wide v2, v8

    move v4, p1

    move v5, p2

    move v6, p3

    .line 4213
    invoke-static/range {v1 .. v7}, Lo/onTouch;->extraCallback(Landroid/media/MediaMetadataRetriever;JIIILo/drawSelectorCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    .line 4276
    invoke-virtual {p4, v8, v9, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_8
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 190
    iget-object p1, p0, Lo/onTouch;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    invoke-static {v0, p1}, Lo/dispatchDraw;->onPostMessage(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)Lo/dispatchDraw;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 185
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_4
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
