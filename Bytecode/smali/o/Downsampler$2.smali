.class final Lo/Downsampler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Downsampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Downsampler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lo/Downsampler$2;->onMessageChannelReady(Landroid/os/Parcel;)Lo/Downsampler;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lo/Downsampler$2;->onPostMessage(I)[Lo/Downsampler;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/Downsampler;
    .locals 1

    .line 84
    new-instance v0, Lo/Downsampler;

    invoke-direct {v0, p1}, Lo/Downsampler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onPostMessage(I)[Lo/Downsampler;
    .locals 0

    .line 89
    new-array p1, p1, [Lo/Downsampler;

    return-object p1
.end method
