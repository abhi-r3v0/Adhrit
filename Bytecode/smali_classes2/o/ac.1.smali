.class final Lo/ac;
.super Lo/ag$2$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ac$onPostMessage;
    }
.end annotation


# instance fields
.field private final extraCallback:J

.field private final onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ag$2$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:J


# direct methods
.method private constructor <init>(JJLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set<",
            "Lo/ag$2$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lo/ag$2$onPostMessage;-><init>()V

    .line 20
    iput-wide p1, p0, Lo/ac;->extraCallback:J

    .line 21
    iput-wide p3, p0, Lo/ac;->onPostMessage:J

    .line 22
    iput-object p5, p0, Lo/ac;->onNavigationEvent:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(JJLjava/util/Set;B)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p5}, Lo/ac;-><init>(JJLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/ag$2$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lo/ac;->onNavigationEvent:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lo/ag$2$onPostMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 55
    check-cast p1, Lo/ag$2$onPostMessage;

    .line 56
    iget-wide v3, p0, Lo/ac;->extraCallback:J

    invoke-virtual {p1}, Lo/ag$2$onPostMessage;->onMessageChannelReady()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/ac;->onPostMessage:J

    .line 57
    invoke-virtual {p1}, Lo/ag$2$onPostMessage;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/ac;->onNavigationEvent:Ljava/util/Set;

    .line 58
    invoke-virtual {p1}, Lo/ag$2$onPostMessage;->ICustomTabsCallback()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 67
    iget-wide v0, p0, Lo/ac;->extraCallback:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 69
    iget-wide v3, p0, Lo/ac;->onPostMessage:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v3, v2

    xor-int/2addr v1, v3

    mul-int v1, v1, v0

    .line 71
    iget-object v0, p0, Lo/ac;->onNavigationEvent:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method final onMessageChannelReady()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lo/ac;->extraCallback:J

    return-wide v0
.end method

.method final onNavigationEvent()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lo/ac;->onPostMessage:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigValue{delta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/ac;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxAllowedDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/ac;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ac;->onNavigationEvent:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
