.class final Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;",
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
    .locals 1

    .line 2135
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1140
    new-array p1, p1, [Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    return-object p1
.end method
