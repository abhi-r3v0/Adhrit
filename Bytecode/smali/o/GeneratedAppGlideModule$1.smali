.class final Lo/GeneratedAppGlideModule$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GeneratedAppGlideModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lo/GeneratedAppGlideModule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lo/GeneratedAppGlideModule$1;->onMessageChannelReady(Landroid/os/Parcel;)Lo/GeneratedAppGlideModule;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lo/GeneratedAppGlideModule$1;->onNavigationEvent(I)[Lo/GeneratedAppGlideModule;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcel;)Lo/GeneratedAppGlideModule;
    .locals 1

    .line 192
    new-instance v0, Lo/GeneratedAppGlideModule;

    invoke-direct {v0, p1}, Lo/GeneratedAppGlideModule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final onNavigationEvent(I)[Lo/GeneratedAppGlideModule;
    .locals 0

    .line 197
    new-array p1, p1, [Lo/GeneratedAppGlideModule;

    return-object p1
.end method
