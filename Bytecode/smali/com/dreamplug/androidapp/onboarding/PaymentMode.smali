.class public Lcom/dreamplug/androidapp/onboarding/PaymentMode;
.super Lo/create;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field public account_number:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public brand_logo_url:Ljava/lang/String;

.field public client_request_id:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public expiry:Ljava/lang/String;

.field public fingerprint:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public is_nfc_enabled:Ljava/lang/Boolean;

.field public issuer:Ljava/lang/String;

.field public issuer_code:Ljava/lang/String;

.field public masked_id:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public reference_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public user_name:Ljava/lang/String;

.field public variant_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/create;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lo/create;-><init>()V

    .line 45
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->status:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand_logo_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand_logo_url:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCardholder_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_name:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getVariant_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->variant_name:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getReference_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->reference_id:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->fingerprint:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->token:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getNfc_enabled()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->is_nfc_enabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 69
    new-instance v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_id:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->status:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->provider:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->provider:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->masked_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->masked_id:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->reference_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->reference_id:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->fingerprint:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->fingerprint:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->expiry:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->expiry:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->token:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_name:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->client_request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->client_request_id:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    return-object v0
.end method

.method public isSame(Ljava/lang/Object;)Z
    .locals 1

    .line 64
    instance-of v0, p1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iget-object p1, p1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
