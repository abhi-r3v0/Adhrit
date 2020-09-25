.class public final Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImplApi28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 531
    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 532
    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 533
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onPostMessage:Ljava/util/List;

    .line 534
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

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

    if-eqz p1, :cond_6

    .line 540
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    check-cast p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;

    .line 544
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 545
    :cond_2
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 546
    :cond_3
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 548
    :cond_4
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onPostMessage:Ljava/util/List;

    iget-object v2, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 549
    :cond_5
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    iget-object p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 554
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 555
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 556
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 557
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 558
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForeignKey{referenceTable=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", onDelete=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", onUpdate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", columnNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referenceColumnNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
