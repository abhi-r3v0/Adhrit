.class public final Lo/hasEmbeddedTabs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSupportImageTintList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getSupportImageTintList<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onPostMessage(Ljava/nio/ByteBuffer;Ljava/io/File;)Z
    .locals 1

    .line 20
    :try_start_0
    invoke-static {p0, p1}, Lo/getSoftInputMode;->onNavigationEvent(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string v0, "ByteBufferEncoder"

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to write data"

    .line 24
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0

    .line 13
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lo/hasEmbeddedTabs;->onPostMessage(Ljava/nio/ByteBuffer;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
