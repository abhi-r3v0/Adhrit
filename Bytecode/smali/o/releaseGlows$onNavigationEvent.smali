.class public final Lo/releaseGlows$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/releaseGlows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/releaseGlows$onNavigationEvent$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J3\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\t\u0010\u0018\u001a\u00020\u0007H\u00d6\u0001J\u0013\u0010\u0019\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$Data;",
        "Landroid/os/Parcelable;",
        "rewardData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;",
        "source",
        "",
        "position",
        "",
        "fromDiscoverFlow",
        "",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/lang/String;IZ)V",
        "getFromDiscoverFlow",
        "()Z",
        "getPosition",
        "()I",
        "getRewardData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;",
        "getSource",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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
.field final extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Z

.field final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/releaseGlows$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {v0}, Lo/releaseGlows$onNavigationEvent$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/releaseGlows$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 427
    invoke-direct {p0, p1, p2, p3, v0}, Lo/releaseGlows$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/lang/String;IZ)V
    .locals 1

    const-string/jumbo v0, "rewardData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    iput-object p2, p0, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iput p3, p0, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    iput-boolean p4, p0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

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

    instance-of v0, p1, Lo/releaseGlows$onNavigationEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/releaseGlows$onNavigationEvent;

    iget-object v0, p0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    iget-object v1, p1, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    iget v1, p1, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

    iget-boolean p1, p1, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

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
    .locals 3

    iget-object v0, p0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data(rewardData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromDiscoverFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
