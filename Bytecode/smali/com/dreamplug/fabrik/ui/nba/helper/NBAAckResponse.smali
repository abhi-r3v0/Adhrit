.class public final Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\t\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\nH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;",
        "Landroid/os/Parcelable;",
        "canRemove",
        "",
        "(Z)V",
        "getCanRemove",
        "()Z",
        "component1",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "can_remove"
        .end annotation
    .end param

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final copy(Z)Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;
    .locals 1
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "can_remove"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;

    invoke-direct {v0, p1}, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;-><init>(Z)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->onPostMessage:Z

    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->onPostMessage:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->onPostMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBAAckResponse(canRemove="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->onPostMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckResponse;->onPostMessage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
