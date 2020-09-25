.class public final Lo/ab$b;
.super Lo/ag$2;
.source ""


# instance fields
.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setReferrer;",
            "Lo/ag$2$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/b;


# direct methods
.method public constructor <init>(Lo/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/b;",
            "Ljava/util/Map<",
            "Lo/setReferrer;",
            "Lo/ag$2$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lo/ag$2;-><init>()V

    if-eqz p1, :cond_1

    .line 22
    iput-object p1, p0, Lo/ab$b;->onNavigationEvent:Lo/b;

    if-eqz p2, :cond_0

    .line 26
    iput-object p2, p0, Lo/ab$b;->onMessageChannelReady:Ljava/util/Map;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null values"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null clock"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lo/ag$2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 53
    check-cast p1, Lo/ag$2;

    .line 54
    iget-object v1, p0, Lo/ab$b;->onNavigationEvent:Lo/b;

    invoke-virtual {p1}, Lo/ag$2;->onMessageChannelReady()Lo/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ab$b;->onMessageChannelReady:Ljava/util/Map;

    .line 55
    invoke-virtual {p1}, Lo/ag$2;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lo/ab$b;->onNavigationEvent:Lo/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 66
    iget-object v1, p0, Lo/ab$b;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method final onMessageChannelReady()Lo/b;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ab$b;->onNavigationEvent:Lo/b;

    return-object v0
.end method

.method final onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/setReferrer;",
            "Lo/ag$2$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/ab$b;->onMessageChannelReady:Ljava/util/Map;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SchedulerConfig{clock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ab$b;->onNavigationEvent:Lo/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ab$b;->onMessageChannelReady:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
