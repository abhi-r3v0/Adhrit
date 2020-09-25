.class public final Lo/Ӏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerLibCore;


# instance fields
.field private final extraCallback:Z

.field private final onMessageChannelReady:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lo/Ӏ;->extraCallback:Z

    .line 34
    iput p2, p0, Lo/Ӏ;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleImageTranscoder"

    return-object v0
.end method

.method public final extraCallback(Lo/getCardBackgroundColor;Lo/ɩ;Lo/ǃ;)Z
    .locals 1

    if-nez p2, :cond_0

    .line 104
    invoke-static {}, Lo/ɩ;->onPostMessage()Lo/ɩ;

    move-result-object p2

    .line 106
    :cond_0
    iget-boolean v0, p0, Lo/Ӏ;->extraCallback:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lo/Ӏ;->onMessageChannelReady:I

    .line 107
    invoke-static {p2, p3, p1, v0}, Lo/extraCallback;->onMessageChannelReady(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;I)I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady(Lo/setProgress;)Z
    .locals 1

    .line 114
    sget-object v0, Lo/getFrame;->ICustomTabsCallback$Stub$Proxy:Lo/setProgress;

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage(Lo/getCardBackgroundColor;Ljava/io/OutputStream;Lo/ɩ;Lo/ǃ;Ljava/lang/Integer;)Lo/performGetLayoutInflater$onNavigationEvent;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Out-Of-Memory during transcode"

    const-string v3, "SimpleImageTranscoder"

    if-nez p5, :cond_0

    const/16 v4, 0x55

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p5

    :goto_0
    if-nez p3, :cond_1

    .line 49
    invoke-static {}, Lo/ɩ;->onPostMessage()Lo/ɩ;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    .line 1127
    :goto_1
    iget-boolean v6, v1, Lo/Ӏ;->extraCallback:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    .line 1130
    :cond_2
    iget v6, v1, Lo/Ӏ;->onMessageChannelReady:I

    move-object/from16 v8, p4

    .line 1131
    invoke-static {v5, v8, v0, v6}, Lo/extraCallback;->onMessageChannelReady(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;I)I

    move-result v6

    .line 53
    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    iput v6, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x2

    .line 57
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v8, :cond_3

    const-string v0, "Couldn\'t decode the EncodedImage InputStream ! "

    .line 64
    invoke-static {v3, v0}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lo/performGetLayoutInflater$onNavigationEvent;

    invoke-direct {v0, v9}, Lo/performGetLayoutInflater$onNavigationEvent;-><init>(I)V

    return-object v0

    .line 69
    :cond_3
    invoke-static {v0, v5}, Lo/getConversionData;->extraCallback(Lo/getCardBackgroundColor;Lo/ɩ;)Landroid/graphics/Matrix;

    move-result-object v17

    if-eqz v17, :cond_4

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 79
    :try_start_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 80
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x0

    move-object v12, v8

    .line 75
    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v8

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v5, v8

    goto :goto_4

    :cond_4
    move-object v5, v8

    .line 1159
    :goto_3
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 84
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object/from16 v10, p2

    invoke-virtual {v5, v0, v4, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 85
    new-instance v0, Lo/performGetLayoutInflater$onNavigationEvent;

    if-le v6, v7, :cond_5

    const/4 v7, 0x0

    :cond_5
    invoke-direct {v0, v7}, Lo/performGetLayoutInflater$onNavigationEvent;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 90
    :goto_4
    :try_start_3
    invoke-static {v3, v2, v0}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    new-instance v0, Lo/performGetLayoutInflater$onNavigationEvent;

    invoke-direct {v0, v9}, Lo/performGetLayoutInflater$onNavigationEvent;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    .line 93
    :goto_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    :catch_2
    move-exception v0

    .line 59
    invoke-static {v3, v2, v0}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    new-instance v0, Lo/performGetLayoutInflater$onNavigationEvent;

    invoke-direct {v0, v9}, Lo/performGetLayoutInflater$onNavigationEvent;-><init>(I)V

    return-object v0
.end method
