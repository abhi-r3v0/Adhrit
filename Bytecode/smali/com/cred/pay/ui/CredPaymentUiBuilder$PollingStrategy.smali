.class public final Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/ui/CredPaymentUiBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PollingStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy$onMessageChannelReady;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J&\u0010\u0013\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
        "Landroid/os/Parcelable;",
        "interval",
        "",
        "count",
        "",
        "(Ljava/lang/Long;Ljava/lang/Integer;)V",
        "getCount",
        "()Ljava/lang/Integer;",
        "setCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getInterval",
        "()Ljava/lang/Long;",
        "setInterval",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/Integer;)Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
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
        "credpayui_release"
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
.field public ICustomTabsCallback:Ljava/lang/Long;

.field public onPostMessage:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy$onMessageChannelReady;

    invoke-direct {v0}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "interval"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "count"
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    iput-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/Long;Ljava/lang/Integer;)Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "interval"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "count"
        .end annotation
    .end param

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    invoke-direct {v0, p1, p2}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

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

    instance-of v0, p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    iget-object v0, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    iget-object v1, p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

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

    const-string v1, "PollingStrategy(interval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
