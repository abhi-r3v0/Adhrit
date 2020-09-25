.class public final Lo/lambda$awaitEvenIfOnMainThread$0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final params:Lo/recursiveDelete;

.field private final path:Lo/ExecutorUtils$2;


# direct methods
.method public constructor <init>(Lo/ExecutorUtils$2;Lo/recursiveDelete;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->path:Lo/ExecutorUtils$2;

    .line 29
    iput-object p2, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    return-void
.end method

.method public static defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 2

    .line 24
    new-instance v0, Lo/lambda$awaitEvenIfOnMainThread$0;

    sget-object v1, Lo/recursiveDelete;->DEFAULT_PARAMS:Lo/recursiveDelete;

    invoke-direct {v0, p0, v1}, Lo/lambda$awaitEvenIfOnMainThread$0;-><init>(Lo/ExecutorUtils$2;Lo/recursiveDelete;)V

    return-object v0
.end method

.method public static fromPathAndQueryObject(Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/lambda$awaitEvenIfOnMainThread$0;"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lo/recursiveDelete;->fromQueryObject(Ljava/util/Map;)Lo/recursiveDelete;

    move-result-object p1

    .line 45
    new-instance v0, Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-direct {v0, p0, p1}, Lo/lambda$awaitEvenIfOnMainThread$0;-><init>(Lo/ExecutorUtils$2;Lo/recursiveDelete;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 75
    iget-object v2, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->path:Lo/ExecutorUtils$2;

    iget-object v3, p1, Lo/lambda$awaitEvenIfOnMainThread$0;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 78
    :cond_2
    iget-object v2, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    iget-object p1, p1, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getIndex()Lo/setLogFile;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v0

    return-object v0
.end method

.method public final getParams()Lo/recursiveDelete;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    return-object v0
.end method

.method public final getPath()Lo/ExecutorUtils$2;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->path:Lo/ExecutorUtils$2;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 87
    iget-object v0, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v1, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->isDefault()Z

    move-result v0

    return v0
.end method

.method public final loadsAllData()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    invoke-virtual {v0}, Lo/recursiveDelete;->loadsAllData()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/lambda$awaitEvenIfOnMainThread$0;->params:Lo/recursiveDelete;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
