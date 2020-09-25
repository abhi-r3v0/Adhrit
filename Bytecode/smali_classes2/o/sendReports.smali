.class public final Lo/sendReports;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public path:Lo/ExecutorUtils$2;

.field public repoInfo:Lo/getOsDisplayVersionString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    check-cast p1, Lo/sendReports;

    .line 32
    iget-object v1, p0, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    iget-object v2, p1, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 33
    :cond_2
    iget-object v0, p0, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    iget-object p1, p1, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 38
    iget-object v0, p0, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-object v1, p0, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
