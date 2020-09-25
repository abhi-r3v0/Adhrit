.class public abstract Lo/inflate$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/inflate$extraCallback$onTransact;,
        Lo/inflate$extraCallback$extraCallback;,
        Lo/inflate$extraCallback$onRelationshipValidationResult;,
        Lo/inflate$extraCallback$getInterfaceDescriptor;,
        Lo/inflate$extraCallback$onNavigationEvent;,
        Lo/inflate$extraCallback$onMessageChannelReady;,
        Lo/inflate$extraCallback$asBinder;,
        Lo/inflate$extraCallback$ICustomTabsCallback$Stub;,
        Lo/inflate$extraCallback$asInterface;,
        Lo/inflate$extraCallback$onPostMessage;,
        Lo/inflate$extraCallback$ICustomTabsCallback;,
        Lo/inflate$extraCallback$warmup;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u000c\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&\u0082\u0001\u000c\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen;",
        "",
        "()V",
        "getTag",
        "",
        "AbortPayment",
        "AddCard",
        "ChangePaymentMethod",
        "ConfirmationScreen",
        "EnterCardDetails",
        "GenericBottomSheet",
        "InstrumentList",
        "Pay",
        "PaymentSuccess",
        "Recommendations",
        "SurchargeDetailsScreen",
        "VisaPay",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$Recommendations;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$ConfirmationScreen;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$InstrumentList;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$SurchargeDetailsScreen;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$AddCard;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$EnterCardDetails;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$Pay;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$PaymentSuccess;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$GenericBottomSheet;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$ChangePaymentMethod;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$AbortPayment;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$VisaPay;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 844
    invoke-direct {p0}, Lo/inflate$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPostMessage()Ljava/lang/String;
.end method
