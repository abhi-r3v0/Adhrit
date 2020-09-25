.class public final Lo/findContainingItemView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findContainingItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/findContainingItemView$onNavigationEvent$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$WinMachineViewData;",
        "Landroid/os/Parcelable;",
        "state",
        "",
        "cardData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;",
        "responseCard",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
        "(ILcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;)V",
        "getCardData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;",
        "setCardData",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;)V",
        "getResponseCard",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
        "setResponseCard",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;)V",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "component1",
        "component2",
        "component3",
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
.field public ICustomTabsCallback:I

.field public onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

.field public onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/findContainingItemView$onNavigationEvent$onNavigationEvent;

    invoke-direct {v0}, Lo/findContainingItemView$onNavigationEvent$onNavigationEvent;-><init>()V

    sput-object v0, Lo/findContainingItemView$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;)V
    .locals 1

    const-string v0, "cardData"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    iput-object p2, p0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    iput-object p3, p0, Lo/findContainingItemView$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 303
    invoke-direct {p0, v0, p1, v1}, Lo/findContainingItemView$onNavigationEvent;-><init>(ILcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/findContainingItemView$onNavigationEvent;

    iget v0, p0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    iget v1, p1, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    iget-object v1, p1, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/findContainingItemView$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    iget-object p1, p1, Lo/findContainingItemView$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
    .locals 3

    iget v0, p0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/findContainingItemView$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WinMachineViewData(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/findContainingItemView$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lo/findContainingItemView$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
