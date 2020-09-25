.class final Lo/setSupportImageTintMode$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSupportImageTintMode$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSupportImageTintMode;->extraCallback(Ljava/util/List;Ljava/io/InputStream;Lo/ButtonBarLayout;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/io/InputStream;

.field private synthetic onPostMessage:Lo/ButtonBarLayout;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lo/ButtonBarLayout;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/setSupportImageTintMode$3;->ICustomTabsCallback:Ljava/io/InputStream;

    iput-object p2, p0, Lo/setSupportImageTintMode$3;->onPostMessage:Lo/ButtonBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lcom/bumptech/glide/load/ImageHeaderParser;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lo/setSupportImageTintMode$3;->ICustomTabsCallback:Ljava/io/InputStream;

    iget-object v1, p0, Lo/setSupportImageTintMode$3;->onPostMessage:Lo/ButtonBarLayout;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->onMessageChannelReady(Ljava/io/InputStream;Lo/ButtonBarLayout;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lo/setSupportImageTintMode$3;->ICustomTabsCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/setSupportImageTintMode$3;->ICustomTabsCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    throw p1
.end method
