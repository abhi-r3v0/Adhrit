.class public final Lcom/cred/pay/repository/models/checkout/SessionData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/repository/models/checkout/SessionData$ICustomTabsCallback;
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JC\u0010\u001c\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0003\u0010\u0008\u001a\u00020\t2\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\u0013\u0010\u001f\u001a\u00020\t2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020\u001eH\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001J\u0019\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006*"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/SessionData;",
        "Landroid/os/Parcelable;",
        "headers",
        "Lcom/cred/pay/repository/models/checkout/Header;",
        "orderDetails",
        "Lcom/cred/pay/repository/models/checkout/OrderDetails;",
        "suggestedPi",
        "Lcom/cred/pay/repository/models/checkout/SuggestedPi;",
        "enableVies",
        "",
        "surchargeInfo",
        "Lcom/cred/pay/repository/models/checkout/SurchargeInfo;",
        "(Lcom/cred/pay/repository/models/checkout/Header;Lcom/cred/pay/repository/models/checkout/OrderDetails;Lcom/cred/pay/repository/models/checkout/SuggestedPi;ZLcom/cred/pay/repository/models/checkout/SurchargeInfo;)V",
        "getEnableVies",
        "()Z",
        "getHeaders",
        "()Lcom/cred/pay/repository/models/checkout/Header;",
        "getOrderDetails",
        "()Lcom/cred/pay/repository/models/checkout/OrderDetails;",
        "getSuggestedPi",
        "()Lcom/cred/pay/repository/models/checkout/SuggestedPi;",
        "getSurchargeInfo",
        "()Lcom/cred/pay/repository/models/checkout/SurchargeInfo;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field public final ICustomTabsCallback:Z

.field public final extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

.field public final onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

.field public final onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

.field public final onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/repository/models/checkout/SessionData$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/cred/pay/repository/models/checkout/SessionData$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/cred/pay/repository/models/checkout/SessionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/cred/pay/repository/models/checkout/Header;Lcom/cred/pay/repository/models/checkout/OrderDetails;Lcom/cred/pay/repository/models/checkout/SuggestedPi;ZLcom/cred/pay/repository/models/checkout/SurchargeInfo;)V
    .locals 0
    .param p1    # Lcom/cred/pay/repository/models/checkout/Header;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "headers"
        .end annotation
    .end param
    .param p2    # Lcom/cred/pay/repository/models/checkout/OrderDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "order_details"
        .end annotation
    .end param
    .param p3    # Lcom/cred/pay/repository/models/checkout/SuggestedPi;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "suggested_payment_method"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "vsc_enabled"
        .end annotation
    .end param
    .param p5    # Lcom/cred/pay/repository/models/checkout/SurchargeInfo;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_info"
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    iput-object p2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;

    iput-object p3, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    iput-boolean p4, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->ICustomTabsCallback:Z

    iput-object p5, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cred/pay/repository/models/checkout/Header;Lcom/cred/pay/repository/models/checkout/OrderDetails;Lcom/cred/pay/repository/models/checkout/SuggestedPi;ZLcom/cred/pay/repository/models/checkout/SurchargeInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/cred/pay/repository/models/checkout/SessionData;-><init>(Lcom/cred/pay/repository/models/checkout/Header;Lcom/cred/pay/repository/models/checkout/OrderDetails;Lcom/cred/pay/repository/models/checkout/SuggestedPi;ZLcom/cred/pay/repository/models/checkout/SurchargeInfo;)V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/cred/pay/repository/models/checkout/Header;Lcom/cred/pay/repository/models/checkout/OrderDetails;Lcom/cred/pay/repository/models/checkout/SuggestedPi;ZLcom/cred/pay/repository/models/checkout/SurchargeInfo;)Lcom/cred/pay/repository/models/checkout/SessionData;
    .locals 7
    .param p1    # Lcom/cred/pay/repository/models/checkout/Header;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "headers"
        .end annotation
    .end param
    .param p2    # Lcom/cred/pay/repository/models/checkout/OrderDetails;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "order_details"
        .end annotation
    .end param
    .param p3    # Lcom/cred/pay/repository/models/checkout/SuggestedPi;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "suggested_payment_method"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "vsc_enabled"
        .end annotation
    .end param
    .param p5    # Lcom/cred/pay/repository/models/checkout/SurchargeInfo;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_info"
        .end annotation
    .end param

    new-instance v6, Lcom/cred/pay/repository/models/checkout/SessionData;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cred/pay/repository/models/checkout/SessionData;-><init>(Lcom/cred/pay/repository/models/checkout/Header;Lcom/cred/pay/repository/models/checkout/OrderDetails;Lcom/cred/pay/repository/models/checkout/SuggestedPi;ZLcom/cred/pay/repository/models/checkout/SurchargeInfo;)V

    return-object v6
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/cred/pay/repository/models/checkout/SessionData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/checkout/SessionData;

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->ICustomTabsCallback:Z

    iget-boolean v1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->ICustomTabsCallback:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/SessionData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

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

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->ICustomTabsCallback:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionData(headers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", suggestedPi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enableVies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", surchargeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

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

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/Header;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onPostMessage:Lcom/cred/pay/repository/models/checkout/OrderDetails;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->extraCallback:Lcom/cred/pay/repository/models/checkout/SuggestedPi;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-boolean p2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->ICustomTabsCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/SessionData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SurchargeInfo;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
