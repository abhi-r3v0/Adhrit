.class final Lo/getRewardDetails$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRewardDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/getRewardDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lo/getRewardDetails$4;->onMessageChannelReady(Landroid/os/Parcel;)Lo/getRewardDetails;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lo/getRewardDetails$4;->onNavigationEvent(I)[Lo/getRewardDetails;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/getRewardDetails;
    .locals 1

    .line 142
    new-instance v0, Lo/getRewardDetails;

    invoke-direct {v0, p1}, Lo/getRewardDetails;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onNavigationEvent(I)[Lo/getRewardDetails;
    .locals 0

    .line 147
    new-array p1, p1, [Lo/getRewardDetails;

    return-object p1
.end method
