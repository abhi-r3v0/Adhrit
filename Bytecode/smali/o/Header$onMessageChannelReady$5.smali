.class final Lo/Header$onMessageChannelReady$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Header$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Header$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)[Lo/Header$onMessageChannelReady;
    .locals 0

    .line 1175
    new-array p1, p1, [Lo/Header$onMessageChannelReady;

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1166
    invoke-virtual {p0, p1}, Lo/Header$onMessageChannelReady$5;->onPostMessage(Landroid/os/Parcel;)Lo/Header$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1166
    invoke-virtual {p0, p1}, Lo/Header$onMessageChannelReady$5;->ICustomTabsCallback(I)[Lo/Header$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Landroid/os/Parcel;)Lo/Header$onMessageChannelReady;
    .locals 1

    .line 1170
    new-instance v0, Lo/Header$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/Header$onMessageChannelReady;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
