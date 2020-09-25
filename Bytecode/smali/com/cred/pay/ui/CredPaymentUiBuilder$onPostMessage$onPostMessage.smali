.class public final Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage$onPostMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    const-string v0, "in"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    sget-object v3, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    sget-object v4, Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;-><init>(Ljava/lang/String;Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    return-object p1
.end method
