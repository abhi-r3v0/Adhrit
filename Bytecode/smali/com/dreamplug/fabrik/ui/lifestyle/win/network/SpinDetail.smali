.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail$ICustomTabsCallback;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;",
        "Landroid/os/Parcelable;",
        "playedSpinCount",
        "",
        "totalSpinCount",
        "(II)V",
        "getPlayedSpinCount",
        "()I",
        "getTotalSpinCount",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "equals",
        "",
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
.field public final extraCallback:I

.field public final onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "played_spin_count"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_spin_count"
        .end annotation
    .end param

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    iput p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    return-void
.end method

.method public static synthetic onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;I)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;
    .locals 1

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    invoke-virtual {p0, p1, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->copy(II)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(II)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;
    .locals 1
    .param p1    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "played_spin_count"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_spin_count"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;-><init>(II)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    iget p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

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
    .locals 2

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    .line 2025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpinDetail(playedSpinCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalSpinCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
