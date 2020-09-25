.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 364
    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 395
    :cond_0
    instance-of v1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 398
    :cond_1
    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 399
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->extraCallback:Ljava/lang/Object;

    iget-object v3, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->extraCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 404
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 381
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "An entry modification is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
