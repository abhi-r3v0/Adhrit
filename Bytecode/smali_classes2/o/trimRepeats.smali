.class public final Lo/trimRepeats;
.super Landroid/util/Pair;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pair<",
        "TF;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 22
    invoke-super {p0, p1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 25
    :cond_0
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 28
    :cond_1
    check-cast p1, Landroid/util/Pair;

    .line 29
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v0, v2, :cond_4

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 35
    invoke-super {p0}, Landroid/util/Pair;->hashCode()I

    move-result v0

    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method
