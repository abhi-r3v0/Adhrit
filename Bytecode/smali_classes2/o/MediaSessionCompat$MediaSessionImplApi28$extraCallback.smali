.class public final Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImplApi28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Z

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 620
    iput-boolean p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onMessageChannelReady:Z

    .line 621
    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->extraCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 627
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    check-cast p1, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;

    .line 630
    iget-boolean v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onMessageChannelReady:Z

    iget-boolean v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onMessageChannelReady:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 633
    :cond_2
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->extraCallback:Ljava/util/List;

    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 636
    :cond_3
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    const-string v1, "index_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    iget-object p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 639
    :cond_4
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    iget-object p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 646
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    const-string v1, "index_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 651
    iget-boolean v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onMessageChannelReady:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 652
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", unique="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$extraCallback;->extraCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
