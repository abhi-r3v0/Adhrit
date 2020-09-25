.class public final Lcom/cred/pay/repository/models/checkout/Header;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/repository/models/checkout/Header$ICustomTabsCallback;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J!\u0010\u000b\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\rH\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/Header;",
        "Landroid/os/Parcelable;",
        "confirmationHeader",
        "Lcom/cred/pay/repository/models/checkout/HeaderData;",
        "suggestedPiHeader",
        "(Lcom/cred/pay/repository/models/checkout/HeaderData;Lcom/cred/pay/repository/models/checkout/HeaderData;)V",
        "getConfirmationHeader",
        "()Lcom/cred/pay/repository/models/checkout/HeaderData;",
        "getSuggestedPiHeader",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
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
        "credpayrepository_release"
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
.field final extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

.field public final onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/repository/models/checkout/Header$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/cred/pay/repository/models/checkout/Header$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/cred/pay/repository/models/checkout/Header;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/cred/pay/repository/models/checkout/HeaderData;Lcom/cred/pay/repository/models/checkout/HeaderData;)V
    .locals 0
    .param p1    # Lcom/cred/pay/repository/models/checkout/HeaderData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "confirmation_view_header"
        .end annotation
    .end param
    .param p2    # Lcom/cred/pay/repository/models/checkout/HeaderData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "suggested_view_header"
        .end annotation
    .end param

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/Header;->extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

    iput-object p2, p0, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/cred/pay/repository/models/checkout/HeaderData;Lcom/cred/pay/repository/models/checkout/HeaderData;)Lcom/cred/pay/repository/models/checkout/Header;
    .locals 1
    .param p1    # Lcom/cred/pay/repository/models/checkout/HeaderData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "confirmation_view_header"
        .end annotation
    .end param
    .param p2    # Lcom/cred/pay/repository/models/checkout/HeaderData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "suggested_view_header"
        .end annotation
    .end param

    new-instance v0, Lcom/cred/pay/repository/models/checkout/Header;

    invoke-direct {v0, p1, p2}, Lcom/cred/pay/repository/models/checkout/Header;-><init>(Lcom/cred/pay/repository/models/checkout/HeaderData;Lcom/cred/pay/repository/models/checkout/HeaderData;)V

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

    instance-of v0, p1, Lcom/cred/pay/repository/models/checkout/Header;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/checkout/Header;

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Header;->extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/Header;->extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

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

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/Header;->extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Header(confirmationHeader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Header;->extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", suggestedPiHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

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

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Header;->extraCallback:Lcom/cred/pay/repository/models/checkout/HeaderData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/Header;->onPostMessage:Lcom/cred/pay/repository/models/checkout/HeaderData;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
