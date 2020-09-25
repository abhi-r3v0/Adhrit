.class public final Lo/markSupported;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/OaidClient$Info;

.field public final onNavigationEvent:Lo/Foreground$4$4;

.field final onPostMessage:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLo/OaidClient$Info;Lo/Foreground$4$4;)V
    .locals 0

    .line 1020
    invoke-direct {p0}, Lo/markSupported;-><init>()V

    .line 1021
    iput-wide p1, p0, Lo/markSupported;->onPostMessage:J

    if-eqz p3, :cond_1

    .line 1025
    iput-object p3, p0, Lo/markSupported;->ICustomTabsCallback:Lo/OaidClient$Info;

    if-eqz p4, :cond_0

    .line 1029
    iput-object p4, p0, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    return-void

    .line 1027
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null event"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1023
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null transportContext"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1061
    :cond_0
    instance-of v1, p1, Lo/markSupported;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1062
    check-cast p1, Lo/markSupported;

    .line 1063
    iget-wide v3, p0, Lo/markSupported;->onPostMessage:J

    .line 2034
    iget-wide v5, p1, Lo/markSupported;->onPostMessage:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 1063
    iget-object v1, p0, Lo/markSupported;->ICustomTabsCallback:Lo/OaidClient$Info;

    .line 2039
    iget-object v3, p1, Lo/markSupported;->ICustomTabsCallback:Lo/OaidClient$Info;

    .line 1064
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    .line 2044
    iget-object p1, p1, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    .line 1065
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 2074
    iget-wide v0, p0, Lo/markSupported;->onPostMessage:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    .line 2076
    iget-object v2, p0, Lo/markSupported;->ICustomTabsCallback:Lo/OaidClient$Info;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    .line 2078
    iget-object v0, p0, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedEvent{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/markSupported;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/markSupported;->ICustomTabsCallback:Lo/OaidClient$Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
