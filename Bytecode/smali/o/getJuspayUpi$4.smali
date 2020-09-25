.class final Lo/getJuspayUpi$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getJuspayUpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/getJuspayUpi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lo/getJuspayUpi$4;->extraCallback(Landroid/os/Parcel;)Lo/getJuspayUpi;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/getJuspayUpi;
    .locals 1

    .line 134
    new-instance v0, Lo/getJuspayUpi;

    invoke-direct {v0, p1}, Lo/getJuspayUpi;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lo/getJuspayUpi$4;->onMessageChannelReady(I)[Lo/getJuspayUpi;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(I)[Lo/getJuspayUpi;
    .locals 0

    .line 139
    new-array p1, p1, [Lo/getJuspayUpi;

    return-object p1
.end method
