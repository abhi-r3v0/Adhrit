.class public final Lo/clearCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/clearCallbacks$onNavigationEvent;,
        Lo/clearCallbacks$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Ljava/nio/ByteBuffer;",
        "Lo/toGlobalMotionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/clearCallbacks$onMessageChannelReady;

.field private static final onMessageChannelReady:Lo/clearCallbacks$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final asBinder:Lo/toLocalMotionEvent;

.field private final onNavigationEvent:Lo/clearCallbacks$onNavigationEvent;

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/clearCallbacks$onMessageChannelReady;

    invoke-direct {v0}, Lo/clearCallbacks$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/clearCallbacks;->extraCallback:Lo/clearCallbacks$onMessageChannelReady;

    .line 38
    new-instance v0, Lo/clearCallbacks$onNavigationEvent;

    invoke-direct {v0}, Lo/clearCallbacks$onNavigationEvent;-><init>()V

    sput-object v0, Lo/clearCallbacks;->onMessageChannelReady:Lo/clearCallbacks$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/dispatchFitSystemWindows;",
            "Lo/ButtonBarLayout;",
            ")V"
        }
    .end annotation

    .line 61
    sget-object v5, Lo/clearCallbacks;->onMessageChannelReady:Lo/clearCallbacks$onNavigationEvent;

    sget-object v6, Lo/clearCallbacks;->extraCallback:Lo/clearCallbacks$onMessageChannelReady;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lo/clearCallbacks;-><init>(Landroid/content/Context;Ljava/util/List;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;Lo/clearCallbacks$onNavigationEvent;Lo/clearCallbacks$onMessageChannelReady;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;Lo/clearCallbacks$onNavigationEvent;Lo/clearCallbacks$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/dispatchFitSystemWindows;",
            "Lo/ButtonBarLayout;",
            "Lo/clearCallbacks$onNavigationEvent;",
            "Lo/clearCallbacks$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/clearCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lo/clearCallbacks;->onPostMessage:Ljava/util/List;

    .line 75
    new-instance p1, Lo/toLocalMotionEvent;

    invoke-direct {p1, p3, p4}, Lo/toLocalMotionEvent;-><init>(Lo/dispatchFitSystemWindows;Lo/ButtonBarLayout;)V

    iput-object p1, p0, Lo/clearCallbacks;->asBinder:Lo/toLocalMotionEvent;

    .line 76
    iput-object p5, p0, Lo/clearCallbacks;->onNavigationEvent:Lo/clearCallbacks$onNavigationEvent;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/nio/ByteBuffer;IILo/applyFrameworkTintUsingColorFilter;)Lo/setShowDividers;
    .locals 7

    .line 88
    iget-object v0, p0, Lo/clearCallbacks;->onNavigationEvent:Lo/clearCallbacks$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/clearCallbacks$onNavigationEvent;->onMessageChannelReady(Ljava/nio/ByteBuffer;)Lo/onSupportContentChanged$onMessageChannelReady;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p4

    .line 90
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lo/clearCallbacks;->extraCallback(Ljava/nio/ByteBuffer;IILo/onSupportContentChanged$onMessageChannelReady;Lo/applyFrameworkTintUsingColorFilter;)Lo/setShowDividers;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p2, p0, Lo/clearCallbacks;->onNavigationEvent:Lo/clearCallbacks$onNavigationEvent;

    invoke-virtual {p2, v0}, Lo/clearCallbacks$onNavigationEvent;->onMessageChannelReady(Lo/onSupportContentChanged$onMessageChannelReady;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/clearCallbacks;->onNavigationEvent:Lo/clearCallbacks$onNavigationEvent;

    invoke-virtual {p2, v0}, Lo/clearCallbacks$onNavigationEvent;->onMessageChannelReady(Lo/onSupportContentChanged$onMessageChannelReady;)V

    throw p1
.end method

.method private extraCallback(Ljava/nio/ByteBuffer;IILo/onSupportContentChanged$onMessageChannelReady;Lo/applyFrameworkTintUsingColorFilter;)Lo/setShowDividers;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v7, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string/jumbo v4, "x"

    const-string v9, "Decoded GIF from stream in "

    const-string v10, "BufferGifDecoder"

    .line 99
    invoke-static {}, Lo/getAnchorView;->ICustomTabsCallback()J

    move-result-wide v11

    const/4 v13, 0x2

    .line 1159
    :try_start_0
    iget-object v5, v2, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_d

    .line 1513
    iget-object v5, v2, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v5, v5, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    .line 1166
    invoke-virtual/range {p4 .. p4}, Lo/onSupportContentChanged$onMessageChannelReady;->onMessageChannelReady()V

    .line 2513
    iget-object v5, v2, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v5, v5, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    .line 3193
    invoke-virtual/range {p4 .. p4}, Lo/onSupportContentChanged$onMessageChannelReady;->onNavigationEvent()V

    .line 1169
    iget-object v5, v2, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iget v5, v5, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    if-gez v5, :cond_2

    .line 1170
    iget-object v5, v2, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    iput v8, v5, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    .line 1174
    :cond_2
    iget-object v2, v2, Lo/onSupportContentChanged$onMessageChannelReady;->extraCallback:Lo/onSupportContentChanged$onNavigationEvent;

    .line 4062
    iget v5, v2, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    const/4 v14, 0x0

    if-lez v5, :cond_b

    .line 4070
    iget v5, v2, Lo/onSupportContentChanged$onNavigationEvent;->onPostMessage:I

    if-eqz v5, :cond_3

    goto/16 :goto_5

    .line 108
    :cond_3
    sget-object v5, Lo/drawDividersVertical;->ICustomTabsCallback:Lo/setInternalImageTint;

    .line 5027
    iget-object v15, v3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v15, v5}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v3, v3, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v3, v5}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 5101
    :cond_4
    iget-object v3, v5, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 108
    :goto_2
    sget-object v5, Lo/hasOverlappingRendering;->onNavigationEvent:Lo/hasOverlappingRendering;

    if-ne v3, v5, :cond_5

    .line 109
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 110
    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6054
    :goto_3
    iget v5, v2, Lo/onSupportContentChanged$onNavigationEvent;->onTransact:I

    .line 5136
    div-int/2addr v5, v7

    .line 6058
    iget v15, v2, Lo/onSupportContentChanged$onNavigationEvent;->asInterface:I

    .line 5136
    div-int/2addr v15, v0

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 5137
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    .line 5140
    :goto_4
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5141
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-le v5, v8, :cond_7

    .line 5142
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Downsampling GIF, sampleSize: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", target dimens: ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], actual dimens: ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7058
    iget v8, v2, Lo/onSupportContentChanged$onNavigationEvent;->asInterface:I

    .line 5153
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8054
    iget v4, v2, Lo/onSupportContentChanged$onNavigationEvent;->onTransact:I

    .line 5155
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5142
    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_7
    iget-object v4, v1, Lo/clearCallbacks;->asBinder:Lo/toLocalMotionEvent;

    .line 8165
    new-instance v6, Lo/setImageDrawable;

    move-object/from16 v8, p1

    invoke-direct {v6, v4, v2, v8, v5}, Lo/setImageDrawable;-><init>(Lo/setSupportImageTintList$onMessageChannelReady;Lo/onSupportContentChanged$onNavigationEvent;Ljava/nio/ByteBuffer;I)V

    .line 114
    invoke-interface {v6, v3}, Lo/setSupportImageTintList;->onMessageChannelReady(Landroid/graphics/Bitmap$Config;)V

    .line 115
    invoke-interface {v6}, Lo/setSupportImageTintList;->onMessageChannelReady()V

    .line 116
    invoke-interface {v6}, Lo/setSupportImageTintList;->asBinder()Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_9

    .line 128
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v14

    .line 121
    :cond_9
    :try_start_1
    invoke-static {}, Lo/isInTouchMode;->onPostMessage()Lo/isInTouchMode;

    move-result-object v5

    .line 123
    new-instance v14, Lo/toGlobalMotionEvent;

    iget-object v3, v1, Lo/clearCallbacks;->ICustomTabsCallback:Landroid/content/Context;

    move-object v2, v14

    move-object v4, v6

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lo/toGlobalMotionEvent;-><init>(Landroid/content/Context;Lo/setSupportImageTintList;Lo/AppCompatRadioButton;IILandroid/graphics/Bitmap;)V

    .line 126
    new-instance v0, Lo/setShowDividers;

    invoke-direct {v0, v14}, Lo/setShowDividers;-><init>(Lo/toGlobalMotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v0

    .line 128
    :cond_b
    :goto_5
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v14

    .line 1160
    :cond_d
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You must call setData() before parseHeader()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 128
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lo/getAnchorView;->onMessageChannelReady(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    throw v0
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2, p3, p4}, Lo/clearCallbacks;->ICustomTabsCallback(Ljava/nio/ByteBuffer;IILo/applyFrameworkTintUsingColorFilter;)Lo/setShowDividers;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 9081
    sget-object v0, Lo/drawDividersVertical;->onNavigationEvent:Lo/setInternalImageTint;

    .line 10027
    iget-object v1, p2, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p2, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 10101
    :cond_0
    iget-object p2, v0, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 9081
    :goto_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lo/clearCallbacks;->onPostMessage:Ljava/util/List;

    if-nez p1, :cond_1

    .line 11062
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    .line 11065
    :cond_1
    new-instance v0, Lo/setSupportImageTintMode$4;

    invoke-direct {v0, p1}, Lo/setSupportImageTintMode$4;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p2, v0}, Lo/setSupportImageTintMode;->onMessageChannelReady(Ljava/util/List;Lo/setSupportImageTintMode$onNavigationEvent;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    .line 9082
    :goto_1
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
