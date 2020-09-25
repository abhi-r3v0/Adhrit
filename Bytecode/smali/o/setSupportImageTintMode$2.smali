.class final Lo/setSupportImageTintMode$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSupportImageTintMode$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSupportImageTintMode;->ICustomTabsCallback(Ljava/util/List;Ljava/io/InputStream;Lo/ButtonBarLayout;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/setSupportImageTintMode$2;->ICustomTabsCallback:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lo/setSupportImageTintMode$2;->ICustomTabsCallback:Ljava/io/InputStream;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/ImageHeaderParser;->extraCallback(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lo/setSupportImageTintMode$2;->ICustomTabsCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/setSupportImageTintMode$2;->ICustomTabsCallback:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    throw p1
.end method
