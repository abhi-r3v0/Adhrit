.class public Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$Api24Utils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setHost<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/ContentResolver;

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Lo/CustomVersionedParcelable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 60
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->onPostMessage:Lo/CustomVersionedParcelable;

    .line 61
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->ICustomTabsCallback:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;)Lo/CustomVersionedParcelable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->onPostMessage:Lo/CustomVersionedParcelable;

    return-object p0
.end method

.method private static ICustomTabsCallback(Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/getCardBackgroundColor;
    .locals 3

    .line 153
    new-instance v0, Lo/getAlpha;

    invoke-direct {v0, p0}, Lo/getAlpha;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V

    .line 154
    invoke-static {v0}, Lo/setDeepLinkData;->ICustomTabsCallback(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "Orientation"

    .line 2175
    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3045
    invoke-static {p1}, Lo/ɹ;->extraCallback(I)I

    move-result p1

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 156
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 157
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 159
    :cond_1
    invoke-static {p0}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object p0

    .line 161
    :try_start_0
    new-instance v0, Lo/getCardBackgroundColor;

    invoke-direct {v0, p0}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 165
    sget-object p0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    .line 3165
    iput-object p0, v0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 3180
    iput p1, v0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    .line 4175
    iput v2, v0, Lo/getCardBackgroundColor;->asInterface:I

    .line 5170
    iput v1, v0, Lo/getCardBackgroundColor;->onTransact:I

    return-object v0

    :catchall_0
    move-exception p1

    .line 163
    invoke-static {p0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method

.method static synthetic extraCallback(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/getCardBackgroundColor;
    .locals 0

    .line 44
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->ICustomTabsCallback(Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lo/getCardBackgroundColor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/net/Uri;)Landroid/media/ExifInterface;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->ICustomTabsCallback:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lo/setLayoutDirection;->onNavigationEvent(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 132
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->ICustomTabsCallback:Landroid/content/ContentResolver;

    .line 135
    invoke-static {v0, p1}, Lo/setLayoutDirection;->ICustomTabsCallback(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 137
    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$Api24Utils;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$Api24Utils;-><init>(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$Api24Utils;->onNavigationEvent(Ljava/io/FileDescriptor;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    const-class p1, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;

    const-string v0, "StackOverflowError in ExifInterface constructor"

    invoke-static {p1, v0}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)V

    :catch_1
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-interface {p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v3

    .line 86
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v6

    const-string v0, "local"

    const-string v1, "exif"

    .line 88
    invoke-interface {p2, v0, v1}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v7, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;

    const-string v5, "LocalExifThumbnailProducer"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;Lo/waitForCustomerUserId;Lo/unregisterConversionListener;Lo/setPreinstallAttribution;Ljava/lang/String;Lo/getHostPrefix;)V

    .line 116
    new-instance p1, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$2;

    invoke-direct {p1, v7}, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer$2;-><init>(Lo/validateAndTrackInAppPurchase;)V

    invoke-interface {p2, p1}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    .line 123
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalExifThumbnailProducer;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/ǃ;)Z
    .locals 1

    const/16 v0, 0x200

    .line 77
    invoke-static {v0, v0, p1}, Lo/isAttachedToWindow$onMessageChannelReady;->onNavigationEvent(IILo/ǃ;)Z

    move-result p1

    return p1
.end method
