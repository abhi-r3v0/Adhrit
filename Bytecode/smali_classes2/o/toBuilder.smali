.class public Lo/toBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/toBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final latitude:D

.field private final longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_1

    .line 36
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_0

    .line 39
    iput-wide p1, p0, Lo/toBuilder;->latitude:D

    .line 40
    iput-wide p3, p0, Lo/toBuilder;->longitude:D

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Longitude must be in the range of [-180, 180]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Latitude must be in the range of [-90, 90]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lo/toBuilder;

    invoke-virtual {p0, p1}, Lo/toBuilder;->compareTo(Lo/toBuilder;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/toBuilder;)I
    .locals 4

    .line 55
    iget-wide v0, p0, Lo/toBuilder;->latitude:D

    iget-wide v2, p1, Lo/toBuilder;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lo/eventFromJson;->compareDoubles(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-wide v0, p0, Lo/toBuilder;->longitude:D

    iget-wide v2, p1, Lo/toBuilder;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lo/eventFromJson;->compareDoubles(DD)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 71
    instance-of v0, p1, Lo/toBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    check-cast p1, Lo/toBuilder;

    .line 79
    iget-wide v2, p0, Lo/toBuilder;->latitude:D

    iget-wide v4, p1, Lo/toBuilder;->latitude:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lo/toBuilder;->longitude:D

    iget-wide v4, p1, Lo/toBuilder;->longitude:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getLatitude()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lo/toBuilder;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 50
    iget-wide v0, p0, Lo/toBuilder;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 86
    iget-wide v0, p0, Lo/toBuilder;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 88
    iget-wide v3, p0, Lo/toBuilder;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoPoint { latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/toBuilder;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/toBuilder;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
