.class public final Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;
.super Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate$Template1;",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate;",
        "image1",
        "",
        "image1PlaceHolder",
        "",
        "text1",
        "text2",
        "fitImage",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V",
        "getFitImage",
        "()Z",
        "getImage1",
        "()Ljava/lang/String;",
        "getImage1PlaceHolder",
        "()I",
        "getText1",
        "getText2",
        "describeContents",
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
.field public final ICustomTabsCallback:Z

.field public final extraCallback:I

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage$onPostMessage;

    invoke-direct {v0}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage$onPostMessage;-><init>()V

    sput-object v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "image1"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text1"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text2"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;-><init>(B)V

    iput-object p1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->extraCallback:I

    iput-object p3, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 6

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    .line 45
    sget p2, Lo/onItemHoverEnter$onMessageChannelReady;->ic_card_bank:I

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
