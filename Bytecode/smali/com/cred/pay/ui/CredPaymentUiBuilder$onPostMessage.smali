.class public final Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;
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
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0016H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$CredPaymentUi;",
        "Landroid/os/Parcelable;",
        "userId",
        "",
        "confirmationTemplate",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate;",
        "remoteConfigs",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$RemoteConfigs;",
        "headerTemplate",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$HeaderTemplate;",
        "(Ljava/lang/String;Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate;Lcom/cred/pay/ui/CredPaymentUiBuilder$RemoteConfigs;Lcom/cred/pay/ui/CredPaymentUiBuilder$HeaderTemplate;)V",
        "getConfirmationTemplate",
        "()Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate;",
        "setConfirmationTemplate",
        "(Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate;)V",
        "getHeaderTemplate",
        "()Lcom/cred/pay/ui/CredPaymentUiBuilder$HeaderTemplate;",
        "getRemoteConfigs",
        "()Lcom/cred/pay/ui/CredPaymentUiBuilder$RemoteConfigs;",
        "getUserId",
        "()Ljava/lang/String;",
        "describeContents",
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
.field public extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

.field public final onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

.field public final onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage$onPostMessage;

    invoke-direct {v0}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage$onPostMessage;-><init>()V

    sput-object v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;)V
    .locals 1

    const-string v0, "remoteConfigs"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerTemplate"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    iput-object p3, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    iput-object p4, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
