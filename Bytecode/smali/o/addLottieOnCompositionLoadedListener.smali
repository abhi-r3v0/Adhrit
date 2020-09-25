.class public final Lo/addLottieOnCompositionLoadedListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/disableExtraScaleModeInFitXY;


# static fields
.field private static onMessageChannelReady:Lo/clearComposition;

.field private static onPostMessage:Lo/clearComposition;


# instance fields
.field private final ICustomTabsCallback:Lo/setRenderMode;

.field private final extraCallback:Lo/setPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.facebook.animated.gif.GifImage"

    .line 54
    invoke-static {v0}, Lo/addLottieOnCompositionLoadedListener;->onMessageChannelReady(Ljava/lang/String;)Lo/clearComposition;

    move-result-object v0

    sput-object v0, Lo/addLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/clearComposition;

    const-string v0, "com.facebook.animated.webp.WebPImage"

    .line 55
    invoke-static {v0}, Lo/addLottieOnCompositionLoadedListener;->onMessageChannelReady(Ljava/lang/String;)Lo/clearComposition;

    move-result-object v0

    sput-object v0, Lo/addLottieOnCompositionLoadedListener;->onPostMessage:Lo/clearComposition;

    return-void
.end method

.method public constructor <init>(Lo/setRenderMode;Lo/setPosition;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/addLottieOnCompositionLoadedListener;->ICustomTabsCallback:Lo/setRenderMode;

    .line 62
    iput-object p2, p0, Lo/addLottieOnCompositionLoadedListener;->extraCallback:Lo/setPosition;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)Lo/clearComposition;
    .locals 0

    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/clearComposition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onPostMessage(Lo/AFDeepLinkManager;Lo/setSafeMode;Landroid/graphics/Bitmap$Config;)Lo/convertToJsonObject;
    .locals 0

    const/4 p1, 0x0

    .line 4056
    :try_start_0
    new-instance p3, Lo/isChildOrHidden$onPostMessage;

    invoke-direct {p3, p2}, Lo/isChildOrHidden$onPostMessage;-><init>(Lo/setSafeMode;)V

    .line 5054
    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p2

    iput-object p2, p3, Lo/isChildOrHidden$onPostMessage;->onNavigationEvent:Lo/getRootAlpha;

    const/4 p2, 0x0

    .line 5075
    iput p2, p3, Lo/isChildOrHidden$onPostMessage;->onMessageChannelReady:I

    .line 5098
    invoke-static {p1}, Lo/getRootAlpha;->onMessageChannelReady(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p3, Lo/isChildOrHidden$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 154
    invoke-virtual {p3}, Lo/isChildOrHidden$onPostMessage;->ICustomTabsCallback()Lo/layoutChildLeft$extraCallback;

    move-result-object p2

    .line 155
    new-instance p3, Lo/AFFacebookDeferredDeeplink;

    invoke-direct {p3, p2}, Lo/AFFacebookDeferredDeeplink;-><init>(Lo/layoutChildLeft$extraCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 158
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Ljava/lang/Iterable;)V

    return-object p3

    :catchall_0
    move-exception p2

    .line 157
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 158
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Ljava/lang/Iterable;)V

    throw p2
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getCardBackgroundColor;Lo/AFDeepLinkManager;Landroid/graphics/Bitmap$Config;)Lo/convertToJsonObject;
    .locals 4

    .line 107
    sget-object v0, Lo/addLottieOnCompositionLoadedListener;->onPostMessage:Lo/clearComposition;

    if-eqz v0, :cond_2

    .line 2138
    iget-object p1, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 116
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->extraCallback()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lo/addLottieOnCompositionLoadedListener;->onPostMessage:Lo/clearComposition;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->extraCallback()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/clearComposition;->onMessageChannelReady(Ljava/nio/ByteBuffer;)Lo/setSafeMode;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    sget-object v1, Lo/addLottieOnCompositionLoadedListener;->onPostMessage:Lo/clearComposition;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onPostMessage()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lo/clearComposition;->onPostMessage(JI)Lo/setSafeMode;

    move-result-object v0

    .line 121
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lo/addLottieOnCompositionLoadedListener;->onPostMessage(Lo/AFDeepLinkManager;Lo/setSafeMode;Landroid/graphics/Bitmap$Config;)Lo/convertToJsonObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 2215
    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated webp please add the dependency to the animated-webp module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/getCardBackgroundColor;Lo/AFDeepLinkManager;Landroid/graphics/Bitmap$Config;)Lo/convertToJsonObject;
    .locals 4

    .line 76
    sget-object v0, Lo/addLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/clearComposition;

    if-eqz v0, :cond_2

    .line 1138
    iget-object p1, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 85
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->extraCallback()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lo/addLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/clearComposition;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->extraCallback()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/clearComposition;->onMessageChannelReady(Ljava/nio/ByteBuffer;)Lo/setSafeMode;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    sget-object v1, Lo/addLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/clearComposition;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onPostMessage()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lo/clearComposition;->onPostMessage(JI)Lo/setSafeMode;

    move-result-object v0

    .line 90
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lo/addLottieOnCompositionLoadedListener;->onPostMessage(Lo/AFDeepLinkManager;Lo/setSafeMode;Landroid/graphics/Bitmap$Config;)Lo/convertToJsonObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 1215
    throw p1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated gif please add the dependency to the animated-gif module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
