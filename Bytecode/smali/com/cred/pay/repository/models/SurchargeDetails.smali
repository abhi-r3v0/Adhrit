.class public final Lcom/cred/pay/repository/models/SurchargeDetails;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/repository/models/SurchargeDetails$ICustomTabsCallback;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J>\u0010\u0016\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0008H\u00d6\u0001J\u0019\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\r\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/SurchargeDetails;",
        "Landroid/os/Parcelable;",
        "netAmount",
        "",
        "surchargeAmount",
        "surchargeText",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "surchargeId",
        "",
        "(Ljava/lang/Double;Ljava/lang/Double;Lcom/dreamplug/textformatter/EncodedStringWrapper;Ljava/lang/String;)V",
        "getNetAmount",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getSurchargeAmount",
        "getSurchargeId",
        "()Ljava/lang/String;",
        "getSurchargeText",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Double;Ljava/lang/Double;Lcom/dreamplug/textformatter/EncodedStringWrapper;Ljava/lang/String;)Lcom/cred/pay/repository/models/SurchargeDetails;",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
.field public final ICustomTabsCallback:Ljava/lang/Double;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/Double;

.field public final onPostMessage:Lo/getTargetScrollPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/repository/models/SurchargeDetails$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/cred/pay/repository/models/SurchargeDetails$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/cred/pay/repository/models/SurchargeDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cred/pay/repository/models/SurchargeDetails;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "net_payable_amount"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_amount"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_id"
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->ICustomTabsCallback:Ljava/lang/Double;

    iput-object p2, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    iput-object p3, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    iput-object p4, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 35
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cred/pay/repository/models/SurchargeDetails;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/Double;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;)Lcom/cred/pay/repository/models/SurchargeDetails;
    .locals 1
    .param p1    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "net_payable_amount"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_amount"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "surcharge_id"
        .end annotation
    .end param

    new-instance v0, Lcom/cred/pay/repository/models/SurchargeDetails;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cred/pay/repository/models/SurchargeDetails;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;)V

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

    instance-of v0, p1, Lcom/cred/pay/repository/models/SurchargeDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/SurchargeDetails;

    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->ICustomTabsCallback:Ljava/lang/Double;

    iget-object v1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->ICustomTabsCallback:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    iget-object v1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    iget-object p1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->ICustomTabsCallback:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurchargeDetails(netAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->ICustomTabsCallback:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surchargeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surchargeText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surchargeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->ICustomTabsCallback:Ljava/lang/Double;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onPostMessage:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
