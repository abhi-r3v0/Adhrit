.class public final Lo/getStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/getStream;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final nanoseconds:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/getStream$5;

    invoke-direct {v0}, Lo/getStream$5;-><init>()V

    sput-object v0, Lo/getStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1, p2, p3}, Lo/getStream;->validateRange(JI)V

    .line 64
    iput-wide p1, p0, Lo/getStream;->seconds:J

    .line 65
    iput p3, p0, Lo/getStream;->nanoseconds:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getStream;->seconds:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/getStream;->nanoseconds:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 76
    div-long v4, v0, v2

    .line 77
    rem-long/2addr v0, v2

    long-to-int p1, v0

    const v0, 0xf4240

    mul-int p1, p1, v0

    if-gez p1, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    const v0, 0x3b9aca00

    add-int/2addr p1, v0

    .line 82
    :cond_0
    invoke-static {v4, v5, p1}, Lo/getStream;->validateRange(JI)V

    .line 83
    iput-wide v4, p0, Lo/getStream;->seconds:J

    .line 84
    iput p1, p0, Lo/getStream;->nanoseconds:I

    return-void
.end method

.method public static now()Lo/getStream;
    .locals 2

    .line 90
    new-instance v0, Lo/getStream;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lo/getStream;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method private static validateRange(JI)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Timestamp nanoseconds out of range: %s"

    invoke-static {v2, v4, v3}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    int-to-double v2, p2

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v7, v2, v5

    if-gez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v3, v0, [Ljava/lang/Object;

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {v2, v4, v3}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v2, -0xe7791f700L

    cmp-long p2, p0, v2

    if-ltz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    new-array v2, v0, [Ljava/lang/Object;

    .line 157
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Timestamp seconds out of range: %s"

    invoke-static {p2, v3, v2}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v4, 0x3afff44180L

    cmp-long p2, p0, v4

    if-gez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p2, v3, v0}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lo/getStream;

    invoke-virtual {p0, p1}, Lo/getStream;->compareTo(Lo/getStream;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lo/getStream;)I
    .locals 5

    .line 122
    iget-wide v0, p0, Lo/getStream;->seconds:J

    iget-wide v2, p1, Lo/getStream;->seconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 123
    iget v0, p0, Lo/getStream;->nanoseconds:I

    iget p1, p1, Lo/getStream;->nanoseconds:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1

    :cond_0
    sub-long/2addr v0, v2

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lo/getStream;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 136
    :cond_1
    check-cast p1, Lo/getStream;

    invoke-virtual {p0, p1}, Lo/getStream;->compareTo(Lo/getStream;)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getNanoseconds()I
    .locals 1

    .line 100
    iget v0, p0, Lo/getStream;->nanoseconds:I

    return v0
.end method

.method public final getSeconds()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lo/getStream;->seconds:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .line 142
    iget-wide v0, p0, Lo/getStream;->seconds:J

    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x25

    mul-int/lit8 v2, v2, 0x25

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x25

    .line 144
    iget v0, p0, Lo/getStream;->nanoseconds:I

    add-int/2addr v2, v0

    return v2
.end method

.method public final toDate()Ljava/util/Date;
    .locals 5

    .line 106
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lo/getStream;->seconds:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iget v3, p0, Lo/getStream;->nanoseconds:I

    const v4, 0xf4240

    div-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timestamp(seconds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lo/getStream;->seconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nanoseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getStream;->nanoseconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 116
    iget-wide v0, p0, Lo/getStream;->seconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget p2, p0, Lo/getStream;->nanoseconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
