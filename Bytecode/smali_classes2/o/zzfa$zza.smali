.class public final Lo/zzfa$zza;
.super Lo/getTags;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getTags;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/zzfa$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onPostMessage:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lo/dispatchMessage;

    invoke-direct {v0}, Lo/dispatchMessage;-><init>()V

    sput-object v0, Lo/zzfa$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/zzfa$zza;)Landroid/os/Bundle;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/os/Bundle;
    .locals 2

    .line 17
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method final extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lo/zzhq$zza;

    invoke-direct {v0, p0}, Lo/zzhq$zza;-><init>(Lo/zzfa$zza;)V

    return-object v0
.end method

.method final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 13
    iget-object v0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 15
    iget-object v0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method final onNavigationEvent(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 12
    iget-object v0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method final onPostMessage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/zzfa$zza;->onPostMessage:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 5
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 9
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
