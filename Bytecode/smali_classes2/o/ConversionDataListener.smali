.class public final Lo/ConversionDataListener;
.super Lo/CreateOneLinkHttpTask;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onErrorResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/onErrorResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/CreateOneLinkHttpTask;-><init>()V

    .line 2
    iput-object p1, p0, Lo/ConversionDataListener;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lo/CreateOneLinkHttpTask;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lo/CreateOneLinkHttpTask;

    .line 3
    iget-object v0, p0, Lo/ConversionDataListener;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {p1}, Lo/CreateOneLinkHttpTask;->extraCallback()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/onErrorResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo/ConversionDataListener;->ICustomTabsCallback:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/ConversionDataListener;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchedLogRequest{logRequests="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ConversionDataListener;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
