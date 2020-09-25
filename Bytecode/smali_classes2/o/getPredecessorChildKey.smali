.class public final Lo/getPredecessorChildKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady<",
        "[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 1

    .line 25
    check-cast p1, [C

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2032
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 2034
    :cond_0
    array-length v0, p1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2035
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeCharArray([C)V

    return-void
.end method

.method public final synthetic onPostMessage(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1046
    :cond_0
    new-array v0, v0, [C

    .line 1047
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readCharArray([C)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
