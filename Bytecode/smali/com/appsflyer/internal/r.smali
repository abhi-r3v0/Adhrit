.class public final Lcom/appsflyer/internal/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final ı:Ljava/lang/String;

.field private Ɩ:J

.field private final ǃ:I

.field private final ɩ:[[F

.field private final Ι:[J

.field private final ι:Ljava/lang/String;

.field private final І:I

.field private і:D


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [[F

    .line 31
    iput-object v1, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    new-array v0, v0, [J

    .line 32
    iput-object v0, p0, Lcom/appsflyer/internal/r;->Ι:[J

    .line 38
    iput p1, p0, Lcom/appsflyer/internal/r;->ǃ:I

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/appsflyer/internal/r;->ı:Ljava/lang/String;

    if-nez p3, :cond_1

    move-object p3, v0

    .line 40
    :cond_1
    iput-object p3, p0, Lcom/appsflyer/internal/r;->ι:Ljava/lang/String;

    .line 41
    iget-object p2, p0, Lcom/appsflyer/internal/r;->ı:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    .line 2052
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x1f

    .line 2053
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    .line 41
    iput p1, p0, Lcom/appsflyer/internal/r;->І:I

    return-void
.end method

.method private static ı([F[F)D
    .locals 8

    .line 70
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 73
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private ǃ()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private static ɩ([F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 86
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private Ι(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 139
    iget v0, p0, Lcom/appsflyer/internal/r;->ǃ:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/internal/r;->ı:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/internal/r;->ι:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static Ι(Landroid/hardware/Sensor;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private ι()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 189
    iget v1, p0, Lcom/appsflyer/internal/r;->ǃ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/appsflyer/internal/r;->ı:Ljava/lang/String;

    const-string/jumbo v2, "sN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/appsflyer/internal/r;->ι:Ljava/lang/String;

    const-string/jumbo v2, "sV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/appsflyer/internal/r;->ɩ([F)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "sVS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 198
    invoke-static {v1}, Lcom/appsflyer/internal/r;->ɩ([F)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "sVE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 241
    :cond_0
    instance-of v0, p1, Lcom/appsflyer/internal/r;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Lcom/appsflyer/internal/r;

    .line 243
    iget v0, p1, Lcom/appsflyer/internal/r;->ǃ:I

    iget-object v1, p1, Lcom/appsflyer/internal/r;->ı:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/r;->ι:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/r;->Ι(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/appsflyer/internal/r;->І:I

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    if-eqz p1, :cond_3

    .line 93
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {v0}, Lcom/appsflyer/internal/r;->Ι(Landroid/hardware/Sensor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 95
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2108
    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/r;->Ι(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2147
    iget-object v2, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    const/4 v5, 0x0

    aget-object v6, v2, v5

    if-nez v6, :cond_0

    .line 2149
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v2, v5

    .line 2150
    iget-object p1, p0, Lcom/appsflyer/internal/r;->Ι:[J

    aput-wide v0, p1, v5

    return-void

    :cond_0
    const/4 v5, 0x1

    .line 2152
    aget-object v2, v2, v5

    if-nez v2, :cond_1

    .line 2154
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 2155
    iget-object v2, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    aput-object p1, v2, v5

    .line 2156
    iget-object v2, p0, Lcom/appsflyer/internal/r;->Ι:[J

    aput-wide v0, v2, v5

    .line 2157
    invoke-static {v6, p1}, Lcom/appsflyer/internal/r;->ı([F[F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/r;->і:D

    return-void

    :cond_1
    const-wide/32 v7, 0x2faf080

    .line 2161
    iget-wide v9, p0, Lcom/appsflyer/internal/r;->Ɩ:J

    sub-long v9, v3, v9

    cmp-long v11, v7, v9

    if-gtz v11, :cond_3

    .line 2162
    iput-wide v3, p0, Lcom/appsflyer/internal/r;->Ɩ:J

    .line 2163
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2165
    iget-object p1, p0, Lcom/appsflyer/internal/r;->Ι:[J

    aput-wide v0, p1, v5

    return-void

    .line 2167
    :cond_2
    invoke-static {v6, p1}, Lcom/appsflyer/internal/r;->ı([F[F)D

    move-result-wide v2

    .line 2168
    iget-wide v6, p0, Lcom/appsflyer/internal/r;->і:D

    cmpl-double v4, v2, v6

    if-lez v4, :cond_3

    .line 2169
    iget-object v4, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    array-length v6, p1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v4, v5

    .line 2170
    iget-object p1, p0, Lcom/appsflyer/internal/r;->Ι:[J

    aput-wide v0, p1, v5

    .line 2171
    iput-wide v2, p0, Lcom/appsflyer/internal/r;->і:D

    :cond_3
    return-void
.end method

.method public final ı(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/r;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/appsflyer/internal/r;->ǃ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/appsflyer/internal/r;->ι()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 2208
    iget-object p1, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    array-length p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2209
    iget-object v1, p0, Lcom/appsflyer/internal/r;->ɩ:[[F

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2211
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/r;->Ι:[J

    array-length p1, p1

    :goto_1
    const-wide/16 v0, 0x0

    if-ge p2, p1, :cond_1

    .line 2212
    iget-object v2, p0, Lcom/appsflyer/internal/r;->Ι:[J

    aput-wide v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 2214
    iput-wide p1, p0, Lcom/appsflyer/internal/r;->і:D

    .line 2215
    iput-wide v0, p0, Lcom/appsflyer/internal/r;->Ɩ:J

    return-void

    .line 133
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/appsflyer/internal/r;->ι()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
