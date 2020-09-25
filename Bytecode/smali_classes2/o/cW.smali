.class final Lo/cW;
.super Lo/dk;
.source ""


# instance fields
.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/onPostExecute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onPostExecute<",
            "Lo/onPreExecute<",
            "Lo/getSupportedCipherSuites;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/onPostExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/onPostExecute<",
            "Lo/onPreExecute<",
            "Lo/getSupportedCipherSuites;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/dk;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lo/cW;->extraCallback:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lo/cW;->onMessageChannelReady:Lo/onPostExecute;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/onPostExecute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/onPostExecute<",
            "Lo/onPreExecute<",
            "Lo/getSupportedCipherSuites;",
            ">;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/cW;->onMessageChannelReady:Lo/onPostExecute;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lo/dk;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 13
    check-cast p1, Lo/dk;

    .line 14
    iget-object v1, p0, Lo/cW;->extraCallback:Landroid/content/Context;

    invoke-virtual {p1}, Lo/dk;->onPostMessage()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/cW;->onMessageChannelReady:Lo/onPostExecute;

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {p1}, Lo/dk;->ICustomTabsCallback()Lo/onPostExecute;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/dk;->ICustomTabsCallback()Lo/onPostExecute;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 18
    iget-object v0, p0, Lo/cW;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 20
    iget-object v1, p0, Lo/cW;->onMessageChannelReady:Lo/onPostExecute;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method final onPostMessage()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/cW;->extraCallback:Landroid/content/Context;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 9
    iget-object v0, p0, Lo/cW;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/cW;->onMessageChannelReady:Lo/onPostExecute;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FlagsContext{context="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hermeticFileOverrides="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
