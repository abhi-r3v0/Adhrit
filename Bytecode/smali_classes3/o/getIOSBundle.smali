.class public final Lo/getIOSBundle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMultiFactorInfo$onNavigationEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getIOSBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lo/getIOSBundle$5;

    invoke-direct {v0}, Lo/getIOSBundle$5;-><init>()V

    sput-object v0, Lo/getIOSBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lo/getIOSBundle;->extraCallback:J

    return-void
.end method

.method synthetic constructor <init>(JB)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lo/getIOSBundle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Z
    .locals 3

    .line 74
    iget-wide v0, p0, Lo/getIOSBundle;->extraCallback:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lo/getIOSBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 95
    :cond_1
    check-cast p1, Lo/getIOSBundle;

    .line 96
    iget-wide v3, p0, Lo/getIOSBundle;->extraCallback:J

    iget-wide v5, p1, Lo/getIOSBundle;->extraCallback:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    iget-wide v1, p0, Lo/getIOSBundle;->extraCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 84
    iget-wide v0, p0, Lo/getIOSBundle;->extraCallback:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
