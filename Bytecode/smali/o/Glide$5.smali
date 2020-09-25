.class final Lo/Glide$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Glide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/Glide;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lo/Glide$5;->onMessageChannelReady(Landroid/os/Parcel;)Lo/Glide;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lo/Glide$5;->onNavigationEvent(I)[Lo/Glide;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/Glide;
    .locals 1

    .line 135
    new-instance v0, Lo/Glide;

    invoke-direct {v0, p1}, Lo/Glide;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onNavigationEvent(I)[Lo/Glide;
    .locals 0

    .line 140
    new-array p1, p1, [Lo/Glide;

    return-object p1
.end method
