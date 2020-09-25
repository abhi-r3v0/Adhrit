.class public final Lcom/google/android/gms/location/LocationRequest;
.super Lo/getTags;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:J

.field private asBinder:F

.field private asInterface:J

.field private extraCallback:Z

.field private onMessageChannelReady:J

.field private onNavigationEvent:J

.field private onPostMessage:I

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setVolume;

    invoke-direct {v0}, Lo/setVolume;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/getTags;-><init>()V

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->onNavigationEvent:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->extraCallback:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->onMessageChannelReady:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    return-void
.end method

.method public constructor <init>(IJJZJIFJ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    iput-wide p2, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    iput-wide p4, p0, Lcom/google/android/gms/location/LocationRequest;->onNavigationEvent:J

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationRequest;->extraCallback:Z

    iput-wide p7, p0, Lcom/google/android/gms/location/LocationRequest;->onMessageChannelReady:J

    iput p9, p0, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    iput-wide p11, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    if-ne v1, v3, :cond_4

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    iget-wide v5, p1, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->onNavigationEvent:J

    iget-wide v7, p1, Lcom/google/android/gms/location/LocationRequest;->onNavigationEvent:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->extraCallback:Z

    iget-boolean v5, p1, Lcom/google/android/gms/location/LocationRequest;->extraCallback:Z

    if-ne v1, v5, :cond_4

    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->onMessageChannelReady:J

    iget-wide v7, p1, Lcom/google/android/gms/location/LocationRequest;->onMessageChannelReady:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    iget v5, p1, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    if-ne v1, v5, :cond_4

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    iget v5, p1, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 10000
    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, v5

    .line 11000
    :goto_0
    iget-wide v5, p1, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    iget-wide v7, p1, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    cmp-long p1, v5, v7

    if-gez p1, :cond_3

    move-wide v5, v7

    :cond_3
    cmp-long p1, v3, v5

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    const/16 v2, 0x64

    const/16 v3, 0x69

    if-eq v1, v2, :cond_3

    const/16 v2, 0x66

    if-eq v1, v2, :cond_2

    const/16 v2, 0x68

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    const-string v1, "???"

    goto :goto_0

    :cond_0
    const-string v1, "PRIORITY_NO_POWER"

    goto :goto_0

    :cond_1
    const-string v1, "PRIORITY_LOW_POWER"

    goto :goto_0

    :cond_2
    const-string v1, "PRIORITY_BALANCED_POWER_ACCURACY"

    goto :goto_0

    :cond_3
    const-string v1, "PRIORITY_HIGH_ACCURACY"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    const-string v2, "ms"

    if-eq v1, v3, :cond_4

    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->onNavigationEvent:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    const-string v1, " maxWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    const-string v1, " smallestDisplacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->onMessageChannelReady:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_8

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->onPostMessage:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 2039
    invoke-static {p1, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->ICustomTabsCallback:J

    const/16 v0, 0x8

    const/4 v4, 0x2

    .line 2049
    invoke-static {p1, v4, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2050
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->onNavigationEvent:J

    const/4 v4, 0x3

    .line 3049
    invoke-static {p1, v4, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3050
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->extraCallback:Z

    .line 4020
    invoke-static {p1, v1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4021
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->onMessageChannelReady:J

    const/4 v4, 0x5

    .line 4049
    invoke-static {p1, v4, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4050
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->onTransact:I

    const/4 v3, 0x6

    .line 5039
    invoke-static {p1, v3, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->asBinder:F

    const/4 v3, 0x7

    .line 5067
    invoke-static {p1, v3, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5068
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->asInterface:J

    .line 6049
    invoke-static {p1, v0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 6050
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 8011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v2, v0, p2

    sub-int/2addr p2, v1

    .line 8013
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8014
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8015
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
