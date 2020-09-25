.class public final Lo/SmsConsentRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/CardValidationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/CardValidationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onNavigationEvent:Lo/push;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/BankSmsAckRequestJsonAdapter;

    invoke-direct {v0}, Lo/BankSmsAckRequestJsonAdapter;-><init>()V

    sput-object v0, Lo/SmsConsentRequest;->extraCallback:Lo/CardValidationResponse;

    new-instance v0, Lo/SmsConsentRequestJsonAdapter;

    invoke-direct {v0}, Lo/SmsConsentRequestJsonAdapter;-><init>()V

    sput-object v0, Lo/SmsConsentRequest;->ICustomTabsCallback:Lo/CardValidationResponse;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lo/push;

    sget-object v4, Lo/SmsConsentRequest;->extraCallback:Lo/CardValidationResponse;

    sget-object v5, Lo/SmsConsentRequest;->ICustomTabsCallback:Lo/CardValidationResponse;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo/push;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Ljava/lang/String;Lo/CardValidationResponse;Lo/CardValidationResponse;)V

    iput-object v6, p0, Lo/SmsConsentRequest;->onNavigationEvent:Lo/push;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;)Lo/RentOrderResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1<",
            "TI;>;",
            "Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1<",
            "TO;>;)",
            "Lo/RentOrderResponseJsonAdapter<",
            "TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lo/setMutableMap;

    iget-object v1, p0, Lo/SmsConsentRequest;->onNavigationEvent:Lo/push;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/setMutableMap;-><init>(Lo/push;Ljava/lang/String;Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;)V

    return-object v0
.end method
