.class public Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lo/getMinName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lo/getMinName<",
        "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private paymentMode$$0:Lcom/dreamplug/androidapp/onboarding/PaymentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable$2;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable$2;-><init>()V

    sput-object v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->paymentMode$$0:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    return-void
.end method

.method public static read(Landroid/os/Parcel;Lo/compareLeafValues;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;
    .locals 5

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2034
    iget-object v1, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 2042
    iget-object p0, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    if-ne p0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 2059
    iget-object p0, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 97
    check-cast p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    return-object p0

    .line 95
    :cond_2
    new-instance p0, Lorg/parceler/ParcelerRuntimeException;

    const-string p1, "An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory."

    invoke-direct {p0, p1}, Lorg/parceler/ParcelerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3038
    :cond_3
    sget-object v1, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    .line 3053
    iget-object v4, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3054
    iget-object v1, p1, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .line 101
    new-instance v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v4}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>()V

    .line 102
    invoke-virtual {p1, v1, v4}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->reference_id:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 113
    :goto_1
    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->is_nfc_enabled:Ljava/lang/Boolean;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_name:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->client_request_id:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->variant_name:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->token:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_id:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->provider:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->fingerprint:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->masked_id:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand_logo_url:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->expiry:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->status:Ljava/lang/String;

    .line 131
    invoke-virtual {p1, v0, v4}, Lo/compareLeafValues;->onPostMessage(ILjava/lang/Object;)V

    return-object v4
.end method

.method public static write(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Landroid/os/Parcel;ILo/compareLeafValues;)V
    .locals 1

    .line 48
    invoke-virtual {p3, p0}, Lo/compareLeafValues;->onNavigationEvent(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1053
    :cond_0
    iget-object p2, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object p2, p3, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->reference_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->is_nfc_enabled:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->is_nfc_enabled:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->client_request_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->variant_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->masked_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand_logo_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->expiry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->status:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcel()Lcom/dreamplug/androidapp/onboarding/PaymentMode;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->paymentMode$$0:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    return-object v0
.end method

.method public bridge synthetic getParcel()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->getParcel()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->paymentMode$$0:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    new-instance v1, Lo/compareLeafValues;

    invoke-direct {v1}, Lo/compareLeafValues;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode$$Parcelable;->write(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Landroid/os/Parcel;ILo/compareLeafValues;)V

    return-void
.end method
