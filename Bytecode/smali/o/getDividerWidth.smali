.class public final Lo/getDividerWidth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Ljava/io/InputStream;",
        "Lo/toGlobalMotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/ButtonBarLayout;

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/applySupportImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/applySupportImageTint<",
            "Ljava/nio/ByteBuffer;",
            "Lo/toGlobalMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/applySupportImageTint;Lo/ButtonBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/applySupportImageTint<",
            "Ljava/nio/ByteBuffer;",
            "Lo/toGlobalMotionEvent;",
            ">;",
            "Lo/ButtonBarLayout;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/getDividerWidth;->onMessageChannelReady:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lo/getDividerWidth;->onNavigationEvent:Lo/applySupportImageTint;

    .line 36
    iput-object p3, p0, Lo/getDividerWidth;->extraCallback:Lo/ButtonBarLayout;

    return-void
.end method

.method private static onNavigationEvent(Ljava/io/InputStream;)[B
    .locals 4

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-array v1, v1, [B

    .line 63
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    const-string v1, "StreamGifDecoder"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Error reading data from stream"

    .line 69
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/io/InputStream;

    .line 1049
    invoke-static {p1}, Lo/getDividerWidth;->onNavigationEvent(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1053
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1054
    iget-object v0, p0, Lo/getDividerWidth;->onNavigationEvent:Lo/applySupportImageTint;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/applySupportImageTint;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

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

    .line 23
    check-cast p1, Ljava/io/InputStream;

    .line 2041
    sget-object v0, Lo/drawDividersVertical;->onNavigationEvent:Lo/setInternalImageTint;

    .line 3027
    iget-object v1, p2, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v1, v0}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p2, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p2, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 3101
    :cond_0
    iget-object p2, v0, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 2041
    :goto_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/getDividerWidth;->onMessageChannelReady:Ljava/util/List;

    iget-object v0, p0, Lo/getDividerWidth;->extraCallback:Lo/ButtonBarLayout;

    .line 2042
    invoke-static {p2, p1, v0}, Lo/setSupportImageTintMode;->ICustomTabsCallback(Ljava/util/List;Ljava/io/InputStream;Lo/ButtonBarLayout;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
