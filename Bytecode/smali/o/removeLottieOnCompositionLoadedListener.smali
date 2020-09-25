.class public final Lo/removeLottieOnCompositionLoadedListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;,
        Lo/removeLottieOnCompositionLoadedListener$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$onPostMessage;

.field private final onMessageChannelReady:Lo/setFrame;

.field private final onPostMessage:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lo/setFrame;Lo/removeLottieOnCompositionLoadedListener$onPostMessage;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    .line 68
    iput-object p2, p0, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$onPostMessage;

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/removeLottieOnCompositionLoadedListener;->onPostMessage:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p1, p0, Lo/removeLottieOnCompositionLoadedListener;->onPostMessage:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object p1, p0, Lo/removeLottieOnCompositionLoadedListener;->onPostMessage:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private ICustomTabsCallback(ILandroid/graphics/Canvas;)I
    .locals 6

    :goto_0
    if-ltz p1, :cond_a

    .line 1202
    iget-object v0, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v0, p1}, Lo/setFrame;->extraCallback(I)Lo/getProgress;

    move-result-object v0

    .line 1203
    iget-object v1, v0, Lo/getProgress;->onRelationshipValidationResult:Lo/getProgress$onMessageChannelReady;

    .line 1204
    sget-object v2, Lo/getProgress$onMessageChannelReady;->onNavigationEvent:Lo/getProgress$onMessageChannelReady;

    if-ne v1, v2, :cond_0

    .line 1206
    sget-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    goto :goto_1

    .line 1207
    :cond_0
    sget-object v2, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    if-ne v1, v2, :cond_2

    .line 1208
    invoke-direct {p0, v0}, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback(Lo/getProgress;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    sget-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    goto :goto_1

    .line 1215
    :cond_1
    sget-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    goto :goto_1

    .line 1217
    :cond_2
    sget-object v0, Lo/getProgress$onMessageChannelReady;->onPostMessage:Lo/getProgress$onMessageChannelReady;

    if-ne v1, v0, :cond_3

    .line 1218
    sget-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->extraCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    goto :goto_1

    .line 1220
    :cond_3
    sget-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onMessageChannelReady:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    .line 151
    :goto_1
    sget-object v1, Lo/removeLottieOnCompositionLoadedListener$3;->extraCallback:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    return p1

    :cond_5
    add-int/2addr p1, v1

    return p1

    .line 153
    :cond_6
    iget-object v0, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v0, p1}, Lo/setFrame;->extraCallback(I)Lo/getProgress;

    move-result-object v0

    .line 154
    iget-object v2, p0, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$onPostMessage;

    invoke-interface {v2, p1}, Lo/removeLottieOnCompositionLoadedListener$onPostMessage;->onPostMessage(I)Lo/getRootAlpha;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 157
    :try_start_0
    invoke-virtual {v2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    iget-object v3, v0, Lo/getProgress;->onRelationshipValidationResult:Lo/getProgress$onMessageChannelReady;

    sget-object v4, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    if-ne v3, v4, :cond_7

    .line 159
    invoke-direct {p0, p2, v0}, Lo/removeLottieOnCompositionLoadedListener;->extraCallback(Landroid/graphics/Canvas;Lo/getProgress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    add-int/2addr p1, v1

    .line 163
    invoke-virtual {v2}, Lo/getRootAlpha;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lo/getRootAlpha;->close()V

    throw p1

    .line 166
    :cond_8
    invoke-direct {p0, p1}, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return p1

    :cond_9
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private ICustomTabsCallback(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 228
    :cond_0
    iget-object v1, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v1, p1}, Lo/setFrame;->extraCallback(I)Lo/getProgress;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    sub-int/2addr p1, v0

    invoke-interface {v2, p1}, Lo/setFrame;->extraCallback(I)Lo/getProgress;

    move-result-object p1

    .line 230
    iget-object v2, v1, Lo/getProgress;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    sget-object v3, Lo/getProgress$ICustomTabsCallback;->extraCallback:Lo/getProgress$ICustomTabsCallback;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback(Lo/getProgress;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 233
    :cond_1
    iget-object v1, p1, Lo/getProgress;->onRelationshipValidationResult:Lo/getProgress$onMessageChannelReady;

    sget-object v2, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    if-ne v1, v2, :cond_2

    .line 234
    invoke-direct {p0, p1}, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback(Lo/getProgress;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private ICustomTabsCallback(Lo/getProgress;)Z
    .locals 2

    .line 238
    iget v0, p1, Lo/getProgress;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    iget v0, p1, Lo/getProgress;->extraCallback:I

    if-nez v0, :cond_0

    iget v0, p1, Lo/getProgress;->onMessageChannelReady:I

    iget-object v1, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    .line 240
    invoke-interface {v1}, Lo/setFrame;->extraCallback()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lo/getProgress;->onPostMessage:I

    iget-object v0, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    .line 241
    invoke-interface {v0}, Lo/setFrame;->ICustomTabsCallback$Stub()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private extraCallback(Landroid/graphics/Canvas;Lo/getProgress;)V
    .locals 7

    .line 186
    iget v0, p2, Lo/getProgress;->ICustomTabsCallback:I

    int-to-float v2, v0

    iget v0, p2, Lo/getProgress;->extraCallback:I

    int-to-float v3, v0

    iget v0, p2, Lo/getProgress;->ICustomTabsCallback:I

    iget v1, p2, Lo/getProgress;->onMessageChannelReady:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p2, Lo/getProgress;->extraCallback:I

    iget p2, p2, Lo/getProgress;->onPostMessage:I

    add-int/2addr v0, p2

    int-to-float v5, v0

    iget-object v6, p0, Lo/removeLottieOnCompositionLoadedListener;->onPostMessage:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/graphics/Bitmap;)V
    .locals 5

    .line 82
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    invoke-direct {p0, p1}, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback(I)Z

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 89
    invoke-direct {p0, p2, v0}, Lo/removeLottieOnCompositionLoadedListener;->ICustomTabsCallback(ILandroid/graphics/Canvas;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-ge p2, p1, :cond_3

    .line 98
    iget-object v1, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v1, p2}, Lo/setFrame;->extraCallback(I)Lo/getProgress;

    move-result-object v1

    .line 99
    iget-object v2, v1, Lo/getProgress;->onRelationshipValidationResult:Lo/getProgress$onMessageChannelReady;

    .line 100
    sget-object v3, Lo/getProgress$onMessageChannelReady;->onPostMessage:Lo/getProgress$onMessageChannelReady;

    if-eq v2, v3, :cond_2

    .line 103
    iget-object v3, v1, Lo/getProgress;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    sget-object v4, Lo/getProgress$ICustomTabsCallback;->extraCallback:Lo/getProgress$ICustomTabsCallback;

    if-ne v3, v4, :cond_1

    .line 104
    invoke-direct {p0, v0, v1}, Lo/removeLottieOnCompositionLoadedListener;->extraCallback(Landroid/graphics/Canvas;Lo/getProgress;)V

    .line 106
    :cond_1
    iget-object v3, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {v3, p2, v0}, Lo/setFrame;->ICustomTabsCallback(ILandroid/graphics/Canvas;)V

    .line 108
    sget-object v3, Lo/getProgress$onMessageChannelReady;->extraCallback:Lo/getProgress$onMessageChannelReady;

    if-ne v2, v3, :cond_2

    .line 109
    invoke-direct {p0, v0, v1}, Lo/removeLottieOnCompositionLoadedListener;->extraCallback(Landroid/graphics/Canvas;Lo/getProgress;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iget-object p2, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {p2, p1}, Lo/setFrame;->extraCallback(I)Lo/getProgress;

    move-result-object p2

    .line 114
    iget-object v1, p2, Lo/getProgress;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    sget-object v2, Lo/getProgress$ICustomTabsCallback;->extraCallback:Lo/getProgress$ICustomTabsCallback;

    if-ne v1, v2, :cond_4

    .line 115
    invoke-direct {p0, v0, p2}, Lo/removeLottieOnCompositionLoadedListener;->extraCallback(Landroid/graphics/Canvas;Lo/getProgress;)V

    .line 118
    :cond_4
    iget-object p2, p0, Lo/removeLottieOnCompositionLoadedListener;->onMessageChannelReady:Lo/setFrame;

    invoke-interface {p2, p1, v0}, Lo/setFrame;->ICustomTabsCallback(ILandroid/graphics/Canvas;)V

    return-void
.end method
