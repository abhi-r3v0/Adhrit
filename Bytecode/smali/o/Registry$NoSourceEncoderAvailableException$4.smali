.class final Lo/Registry$NoSourceEncoderAvailableException$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Registry$NoSourceEncoderAvailableException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Registry$NoSourceEncoderAvailableException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lo/Registry$NoSourceEncoderAvailableException$4;->onMessageChannelReady(Landroid/os/Parcel;)Lo/Registry$NoSourceEncoderAvailableException;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lo/Registry$NoSourceEncoderAvailableException$4;->onMessageChannelReady(I)[Lo/Registry$NoSourceEncoderAvailableException;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/Registry$NoSourceEncoderAvailableException;
    .locals 1

    .line 91
    new-instance v0, Lo/Registry$NoSourceEncoderAvailableException;

    invoke-direct {v0, p1}, Lo/Registry$NoSourceEncoderAvailableException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onMessageChannelReady(I)[Lo/Registry$NoSourceEncoderAvailableException;
    .locals 0

    .line 96
    new-array p1, p1, [Lo/Registry$NoSourceEncoderAvailableException;

    return-object p1
.end method
