.class public final Lo/ǃ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:F

.field public final extraCallback:I

.field public final onNavigationEvent:F

.field public final onPostMessage:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lo/ǃ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 84
    :cond_1
    check-cast p1, Lo/ǃ;

    .line 85
    iget v1, p0, Lo/ǃ;->extraCallback:I

    iget v3, p1, Lo/ǃ;->extraCallback:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lo/ǃ;->onPostMessage:I

    iget p1, p1, Lo/ǃ;->onPostMessage:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 73
    iget v0, p0, Lo/ǃ;->extraCallback:I

    iget v1, p0, Lo/ǃ;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget v1, p0, Lo/ǃ;->extraCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/ǃ;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "%dx%d"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
