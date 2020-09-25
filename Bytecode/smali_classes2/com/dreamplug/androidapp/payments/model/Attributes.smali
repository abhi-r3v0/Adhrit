.class public Lcom/dreamplug/androidapp/payments/model/Attributes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private clientAuthToken:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "client_auth_token"
    .end annotation
.end field

.field private clientAuthTokenExpiry:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "client_auth_token_expiry"
    .end annotation
.end field

.field private paymentLinkIframe:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "payment_link_iframe"
    .end annotation
.end field

.field private paymentLinkMobile:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "payment_link_mobile"
    .end annotation
.end field

.field private paymentLinkWeb:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "payment_link_web"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientAuthToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->clientAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAuthTokenExpiry()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->clientAuthTokenExpiry:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentLinkIframe()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->paymentLinkIframe:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentLinkMobile()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->paymentLinkMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentLinkWeb()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->paymentLinkWeb:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->clientAuthToken:Ljava/lang/String;

    return-void
.end method

.method public setClientAuthTokenExpiry(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->clientAuthTokenExpiry:Ljava/lang/String;

    return-void
.end method

.method public setPaymentLinkIframe(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->paymentLinkIframe:Ljava/lang/String;

    return-void
.end method

.method public setPaymentLinkMobile(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->paymentLinkMobile:Ljava/lang/String;

    return-void
.end method

.method public setPaymentLinkWeb(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Attributes;->paymentLinkWeb:Ljava/lang/String;

    return-void
.end method
