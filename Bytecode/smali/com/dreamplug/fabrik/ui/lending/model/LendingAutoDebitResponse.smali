.class public final Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse$onPostMessage;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ0\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0013\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
        "Landroid/os/Parcelable;",
        "pitch",
        "Lcom/dreamplug/fabrik/ui/lending/model/Pitch;",
        "confirmationDetails",
        "Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;",
        "showPitch",
        "",
        "(Lcom/dreamplug/fabrik/ui/lending/model/Pitch;Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;Ljava/lang/Boolean;)V",
        "getConfirmationDetails",
        "()Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;",
        "getPitch",
        "()Lcom/dreamplug/fabrik/ui/lending/model/Pitch;",
        "getShowPitch",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lcom/dreamplug/fabrik/ui/lending/model/Pitch;Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

.field public final extraCallback:Ljava/lang/Boolean;

.field public final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse$onPostMessage;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse$onPostMessage;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/Pitch;Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;Ljava/lang/Boolean;)V
    .locals 1
    .param p2    # Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "confirmation_details"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_pitch"
        .end annotation
    .end param

    const-string v0, "confirmationDetails"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/lending/model/Pitch;Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;Ljava/lang/Boolean;)Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;
    .locals 1
    .param p2    # Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "confirmation_details"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "show_pitch"
        .end annotation
    .end param

    const-string v0, "confirmationDetails"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Pitch;Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;Ljava/lang/Boolean;)V

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LendingAutoDebitResponse(pitch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

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

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Pitch;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/ConfirmDetails;

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LendingAutoDebitResponse;->extraCallback:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
