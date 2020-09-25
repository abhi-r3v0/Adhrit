.class public final Lo/header;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToParcel(Lcom/google/firebase/messaging/RemoteMessage;Landroid/os/Parcel;I)V
    .locals 2

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 18
    iget-object p0, p0, Lcom/google/firebase/messaging/RemoteMessage;->bundle:Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-static {p1, v1, p0, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    sub-int p2, p0, v0

    add-int/lit8 v0, v0, -0x4

    .line 3013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/firebase/messaging/RemoteMessage;
    .locals 5

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->onNavigationEvent(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 11
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ICustomTabsCallback(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ICustomTabsService(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->mayLaunchUrl(Landroid/os/Parcel;I)V

    .line 14
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/header;->createFromParcel(Landroid/os/Parcel;)Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/google/firebase/messaging/RemoteMessage;
    .locals 0

    .line 16
    new-array p1, p1, [Lcom/google/firebase/messaging/RemoteMessage;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/header;->newArray(I)[Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object p1

    return-object p1
.end method
