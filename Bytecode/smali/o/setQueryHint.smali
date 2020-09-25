.class public final Lo/setQueryHint;
.super Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;
.source ""


# static fields
.field private static final onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/setQueryHint;

    invoke-direct {v0}, Lo/setQueryHint;-><init>()V

    sput-object v0, Lo/setQueryHint;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method public static onPostMessage()Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;
    .locals 1

    .line 19
    sget-object v0, Lo/setQueryHint;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;

    return-object v0
.end method
