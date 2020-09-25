.class final Lo/ChipsLayoutManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ChipsLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/ChipsLayoutManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lo/ChipsLayoutManager$5;->onMessageChannelReady(Landroid/os/Parcel;)Lo/ChipsLayoutManager;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(I)[Lo/ChipsLayoutManager;
    .locals 0

    .line 141
    new-array p1, p1, [Lo/ChipsLayoutManager;

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lo/ChipsLayoutManager$5;->extraCallback(I)[Lo/ChipsLayoutManager;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/ChipsLayoutManager;
    .locals 1

    .line 136
    new-instance v0, Lo/ChipsLayoutManager;

    invoke-direct {v0, p1}, Lo/ChipsLayoutManager;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
