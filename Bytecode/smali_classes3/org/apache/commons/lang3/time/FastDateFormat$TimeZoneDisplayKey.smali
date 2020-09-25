.class Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 0

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    if-eqz p2, :cond_0

    const/high16 p1, -0x80000000

    or-int/2addr p3, p1

    .line 1489
    :cond_0
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    .line 1490
    iput-object p4, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1509
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1510
    check-cast p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    .line 1511
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    iget v3, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1498
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
