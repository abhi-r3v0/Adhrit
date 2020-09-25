.class final Lo/Header$onPostMessage$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Header$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Header$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1357
    invoke-virtual {p0, p1}, Lo/Header$onPostMessage$4;->extraCallback(Landroid/os/Parcel;)Lo/Header$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/os/Parcel;)Lo/Header$onPostMessage;
    .locals 1

    .line 1361
    new-instance v0, Lo/Header$onPostMessage;

    invoke-direct {v0, p1}, Lo/Header$onPostMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1357
    invoke-virtual {p0, p1}, Lo/Header$onPostMessage$4;->onPostMessage(I)[Lo/Header$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(I)[Lo/Header$onPostMessage;
    .locals 0

    .line 1366
    new-array p1, p1, [Lo/Header$onPostMessage;

    return-object p1
.end method
