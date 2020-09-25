.class final Lo/Foreground$4$3$3;
.super Lo/Foreground$4$4;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Foreground$4$3$3$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Integer;

.field private final extraCallback:J

.field private final onMessageChannelReady:Lo/Foreground$Listener;

.field private final onNavigationEvent:J

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lo/Foreground$Listener;JJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lo/Foreground$Listener;",
            "JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lo/Foreground$4$4;-><init>()V

    .line 30
    iput-object p1, p0, Lo/Foreground$4$3$3;->onPostMessage:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lo/Foreground$4$3$3;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 32
    iput-object p3, p0, Lo/Foreground$4$3$3;->onMessageChannelReady:Lo/Foreground$Listener;

    .line 33
    iput-wide p4, p0, Lo/Foreground$4$3$3;->extraCallback:J

    .line 34
    iput-wide p6, p0, Lo/Foreground$4$3$3;->onNavigationEvent:J

    .line 35
    iput-object p8, p0, Lo/Foreground$4$3$3;->onRelationshipValidationResult:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lo/Foreground$Listener;JJLjava/util/Map;B)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p8}, Lo/Foreground$4$3$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lo/Foreground$Listener;JJLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/Foreground$Listener;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Foreground$4$3$3;->onMessageChannelReady:Lo/Foreground$Listener;

    return-object v0
.end method

.method protected final asBinder()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lo/Foreground$4$3$3;->onRelationshipValidationResult:Ljava/util/Map;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lo/Foreground$4$4;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 87
    check-cast p1, Lo/Foreground$4$4;

    .line 88
    iget-object v1, p0, Lo/Foreground$4$3$3;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1}, Lo/Foreground$4$4;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/Foreground$4$3$3;->ICustomTabsCallback:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p1}, Lo/Foreground$4$4;->onPostMessage()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/Foreground$4$4;->onPostMessage()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lo/Foreground$4$3$3;->onMessageChannelReady:Lo/Foreground$Listener;

    .line 90
    invoke-virtual {p1}, Lo/Foreground$4$4;->ICustomTabsCallback()Lo/Foreground$Listener;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lo/Foreground$4$3$3;->extraCallback:J

    .line 91
    invoke-virtual {p1}, Lo/Foreground$4$4;->extraCallback()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lo/Foreground$4$3$3;->onNavigationEvent:J

    .line 92
    invoke-virtual {p1}, Lo/Foreground$4$4;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/Foreground$4$3$3;->onRelationshipValidationResult:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Lo/Foreground$4$4;->asBinder()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final extraCallback()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lo/Foreground$4$3$3;->extraCallback:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 7

    .line 102
    iget-object v0, p0, Lo/Foreground$4$3$3;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 104
    iget-object v2, p0, Lo/Foreground$4$3$3;->ICustomTabsCallback:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 106
    iget-object v2, p0, Lo/Foreground$4$3$3;->onMessageChannelReady:Lo/Foreground$Listener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 108
    iget-wide v2, p0, Lo/Foreground$4$3$3;->extraCallback:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 110
    iget-wide v2, p0, Lo/Foreground$4$3$3;->onNavigationEvent:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 112
    iget-object v1, p0, Lo/Foreground$4$3$3;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Foreground$4$3$3;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lo/Foreground$4$3$3;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onPostMessage()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/Foreground$4$3$3;->ICustomTabsCallback:Ljava/lang/Integer;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventInternal{transportName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/Foreground$4$3$3;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3$3;->ICustomTabsCallback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodedPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3$3;->onMessageChannelReady:Lo/Foreground$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/Foreground$4$3$3;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/Foreground$4$3$3;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", autoMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3$3;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
