.class public final Lo/isOtherSdkStringDisabled;
.super Lo/isLogsDisabledCompletely;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isLogsDisabledCompletely<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/Integer;

.field private final onMessageChannelReady:Lo/setReferrer;

.field private final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo/setReferrer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setReferrer;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lo/isLogsDisabledCompletely;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lo/isOtherSdkStringDisabled;->extraCallback:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 24
    iput-object p1, p0, Lo/isOtherSdkStringDisabled;->onPostMessage:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Lo/isOtherSdkStringDisabled;->onMessageChannelReady:Lo/setReferrer;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null priority"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null payload"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setReferrer;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/isOtherSdkStringDisabled;->onMessageChannelReady:Lo/setReferrer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lo/isLogsDisabledCompletely;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 62
    check-cast p1, Lo/isLogsDisabledCompletely;

    .line 63
    invoke-virtual {p1}, Lo/isLogsDisabledCompletely;->onMessageChannelReady()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/isOtherSdkStringDisabled;->onPostMessage:Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lo/isLogsDisabledCompletely;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/isOtherSdkStringDisabled;->onMessageChannelReady:Lo/setReferrer;

    .line 65
    invoke-virtual {p1}, Lo/isLogsDisabledCompletely;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 76
    iget-object v0, p0, Lo/isOtherSdkStringDisabled;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x2aff6277

    xor-int/2addr v0, v1

    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 78
    iget-object v1, p0, Lo/isOtherSdkStringDisabled;->onMessageChannelReady:Lo/setReferrer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/isOtherSdkStringDisabled;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isOtherSdkStringDisabled;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isOtherSdkStringDisabled;->onMessageChannelReady:Lo/setReferrer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
