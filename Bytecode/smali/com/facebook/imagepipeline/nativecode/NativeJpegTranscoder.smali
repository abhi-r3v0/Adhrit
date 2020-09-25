.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerLibCore;


# annotations
.annotation build Lo/getGroupName;
.end annotation


# instance fields
.field private extraCallback:I

.field private onNavigationEvent:Z

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(ZIZZ)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->onPostMessage:Z

    .line 53
    iput p2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->extraCallback:I

    .line 54
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->onNavigationEvent:Z

    if-eqz p4, :cond_0

    .line 57
    invoke-static {}, Lo/AppsFlyerConversionListener;->onPostMessage()V

    :cond_0
    return-void
.end method

.method private static native nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeTranscodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lo/getGroupName;
    .end annotation
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "NativeJpegTranscoder"

    return-object v0
.end method

.method public final extraCallback(Lo/getCardBackgroundColor;Lo/ɩ;Lo/ǃ;)Z
    .locals 1

    if-nez p2, :cond_0

    .line 67
    invoke-static {}, Lo/ɩ;->onPostMessage()Lo/ɩ;

    move-result-object p2

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->onPostMessage:Z

    invoke-static {p2, p3, p1, v0}, Lo/getConversionData;->onNavigationEvent(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;Z)I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady(Lo/setProgress;)Z
    .locals 1

    .line 76
    sget-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Lo/getCardBackgroundColor;Ljava/io/OutputStream;Lo/ɩ;Lo/ǃ;Ljava/lang/Integer;)Lo/performGetLayoutInflater$onNavigationEvent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_0

    const/16 p5, 0x55

    .line 94
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :cond_0
    if-nez p3, :cond_1

    .line 97
    invoke-static {}, Lo/ɩ;->onPostMessage()Lo/ɩ;

    move-result-object p3

    .line 99
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->extraCallback:I

    .line 100
    invoke-static {p3, p4, p1, v0}, Lo/extraCallback;->onMessageChannelReady(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;I)I

    move-result v0

    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->onPostMessage:Z

    .line 105
    invoke-static {p3, p4, p1, v2}, Lo/getConversionData;->onNavigationEvent(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;Z)I

    move-result p4

    .line 108
    invoke-static {v0}, Lo/getConversionData;->onNavigationEvent(I)I

    move-result v2

    .line 110
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->onNavigationEvent:Z

    if-eqz v3, :cond_2

    move p4, v2

    .line 115
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v1

    .line 116
    sget-object v2, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    .line 1326
    iget v3, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v3, :cond_3

    iget v3, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v3, :cond_4

    .line 1327
    :cond_3
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 1224
    :cond_4
    iget v3, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "no transformation requested"

    const/16 v4, 0x8

    const/16 v5, 0x64

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_13

    .line 120
    :try_start_1
    invoke-static {p3, p1}, Lo/getConversionData;->onMessageChannelReady(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result p1

    .line 122
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 2197
    invoke-static {}, Lo/AppsFlyerConversionListener;->onPostMessage()V

    if-lez p4, :cond_5

    const/4 p5, 0x1

    goto :goto_0

    :cond_5
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_12

    if-gt p4, v6, :cond_6

    const/4 p5, 0x1

    goto :goto_1

    :cond_6
    const/4 p5, 0x0

    :goto_1
    if-eqz p5, :cond_11

    if-ltz p3, :cond_7

    const/4 p5, 0x1

    goto :goto_2

    :cond_7
    const/4 p5, 0x0

    :goto_2
    if-eqz p5, :cond_10

    if-gt p3, v5, :cond_8

    const/4 p5, 0x1

    goto :goto_3

    :cond_8
    const/4 p5, 0x0

    :goto_3
    if-eqz p5, :cond_f

    .line 2202
    invoke-static {p1}, Lo/getConversionData;->onMessageChannelReady(I)Z

    move-result p5

    if-eqz p5, :cond_e

    if-ne p4, v4, :cond_a

    if-eq p1, v8, :cond_9

    goto :goto_4

    :cond_9
    const/4 p5, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p5, 0x1

    :goto_5
    if-eqz p5, :cond_d

    if-eqz v1, :cond_c

    .line 2207
    move-object p5, v1

    check-cast p5, Ljava/io/InputStream;

    if-eqz p2, :cond_b

    .line 2208
    check-cast p2, Ljava/io/OutputStream;

    .line 2206
    invoke-static {p5, p2, p1, p4, p3}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->nativeTranscodeJpegWithExifOrientation(Ljava/io/InputStream;Ljava/io/OutputStream;III)V

    goto/16 :goto_c

    .line 8215
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 7215
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 7125
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7111
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6111
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5111
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4111
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3111
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 126
    :cond_13
    invoke-static {p3, p1}, Lo/getConversionData;->extraCallback(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result p1

    .line 127
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 9155
    invoke-static {}, Lo/AppsFlyerConversionListener;->onPostMessage()V

    if-lez p4, :cond_14

    const/4 p5, 0x1

    goto :goto_6

    :cond_14
    const/4 p5, 0x0

    :goto_6
    if-eqz p5, :cond_22

    if-gt p4, v6, :cond_15

    const/4 p5, 0x1

    goto :goto_7

    :cond_15
    const/4 p5, 0x0

    :goto_7
    if-eqz p5, :cond_21

    if-ltz p3, :cond_16

    const/4 p5, 0x1

    goto :goto_8

    :cond_16
    const/4 p5, 0x0

    :goto_8
    if-eqz p5, :cond_20

    if-gt p3, v5, :cond_17

    const/4 p5, 0x1

    goto :goto_9

    :cond_17
    const/4 p5, 0x0

    :goto_9
    if-eqz p5, :cond_1f

    .line 9160
    invoke-static {p1}, Lo/getConversionData;->ICustomTabsCallback(I)Z

    move-result p5

    if-eqz p5, :cond_1e

    if-ne p4, v4, :cond_19

    if-eqz p1, :cond_18

    goto :goto_a

    :cond_18
    const/4 p5, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 p5, 0x1

    :goto_b
    if-eqz p5, :cond_1d

    if-eqz v1, :cond_1c

    .line 9164
    move-object p5, v1

    check-cast p5, Ljava/io/InputStream;

    if-eqz p2, :cond_1b

    .line 9165
    check-cast p2, Ljava/io/OutputStream;

    .line 9163
    invoke-static {p5, p2, p1, p4, p3}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;->nativeTranscodeJpeg(Ljava/io/InputStream;Ljava/io/OutputStream;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_c
    invoke-static {v1}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    .line 132
    new-instance p1, Lo/performGetLayoutInflater$onNavigationEvent;

    if-ne v0, v8, :cond_1a

    const/4 v7, 0x1

    :cond_1a
    invoke-direct {p1, v7}, Lo/performGetLayoutInflater$onNavigationEvent;-><init>(I)V

    return-object p1

    .line 15215
    :cond_1b
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 14215
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 14125
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14111
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 13111
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 12111
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 11111
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10111
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 130
    invoke-static {v1}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    throw p1
.end method
