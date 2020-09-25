.class final Lo/isScaling$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isScaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/isScaling;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lo/isScaling$2;->extraCallback(Landroid/os/Parcel;)Lo/isScaling;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/isScaling;
    .locals 7

    .line 83
    new-instance v6, Lo/isScaling;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/isScaling;-><init>(JJLo/isScaling$2;)V

    return-object v6
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lo/isScaling$2;->onNavigationEvent(I)[Lo/isScaling;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)[Lo/isScaling;
    .locals 0

    .line 88
    new-array p1, p1, [Lo/isScaling;

    return-object p1
.end method
