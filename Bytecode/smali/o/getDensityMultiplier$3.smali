.class final Lo/getDensityMultiplier$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDensityMultiplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/getDensityMultiplier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lo/getDensityMultiplier$3;->extraCallback(Landroid/os/Parcel;)Lo/getDensityMultiplier;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/getDensityMultiplier;
    .locals 2

    .line 76
    new-instance v0, Lo/getDensityMultiplier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/getDensityMultiplier;-><init>(Landroid/os/Parcel;Lo/getDensityMultiplier$3;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lo/getDensityMultiplier$3;->onPostMessage(I)[Lo/getDensityMultiplier;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(I)[Lo/getDensityMultiplier;
    .locals 0

    .line 81
    new-array p1, p1, [Lo/getDensityMultiplier;

    return-object p1
.end method
