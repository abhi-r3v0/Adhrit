.class final Lo/InstrumentAction$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstrumentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/InstrumentAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lo/InstrumentAction$5;->extraCallback(Landroid/os/Parcel;)Lo/InstrumentAction;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/InstrumentAction;
    .locals 1

    .line 264
    new-instance v0, Lo/InstrumentAction;

    invoke-direct {v0, p1}, Lo/InstrumentAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lo/InstrumentAction$5;->onMessageChannelReady(I)[Lo/InstrumentAction;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(I)[Lo/InstrumentAction;
    .locals 0

    .line 269
    new-array p1, p1, [Lo/InstrumentAction;

    return-object p1
.end method
