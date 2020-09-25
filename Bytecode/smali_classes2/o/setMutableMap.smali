.class public final Lo/setMutableMap;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RentOrderResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RentOrderResponseJsonAdapter<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/push;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onPostMessage:Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/push;Ljava/lang/String;Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/push;",
            "Ljava/lang/String;",
            "Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1<",
            "TI;>;",
            "Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMutableMap;->extraCallback:Lo/push;

    iput-object p2, p0, Lo/setMutableMap;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/setMutableMap;->onPostMessage:Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;

    iput-object p4, p0, Lo/setMutableMap;->ICustomTabsCallback:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setMutableMap;)Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;
    .locals 0

    iget-object p0, p0, Lo/setMutableMap;->ICustomTabsCallback:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    return-object p0
.end method

.method private final extraCallback(Lo/applyTo;Lo/PlutusOrderJsonAdapter;Ljava/lang/Object;Lo/SuggestedAmount;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/applyTo;",
            "Lo/PlutusOrderJsonAdapter;",
            "TI;",
            "Lo/SuggestedAmount<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {}, Lo/AuthSupportedResponse$MetaData;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/StatementResponse$Waiver;->getInterfaceDescriptor:Lo/StatementResponse$StatementDetails$Transactions$InternationalTransaction;

    new-instance v2, Lo/BottomBarItem;

    invoke-direct {v2, p0, p1, p4}, Lo/BottomBarItem;-><init>(Lo/setMutableMap;Lo/applyTo;Lo/SuggestedAmount;)V

    invoke-virtual {v1, v0, v2}, Lo/StatementResponse$StatementDetails$Transactions$InternationalTransaction;->onPostMessage(Ljava/lang/String;Lo/getBilledDate;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lo/setMutableMap;->onPostMessage:Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;

    invoke-interface {v2, p3}, Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lo/setMutableMap;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lo/PlutusOrderJsonAdapter;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p4, p2}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    const-string p3, "Unable to invokeJavaScript"

    invoke-static {p3, p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lo/applyTo;->extraCallback()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lo/applyTo;->extraCallback()V

    throw p2
.end method

.method static synthetic onPostMessage(Lo/setMutableMap;Lo/applyTo;Lo/PlutusOrderJsonAdapter;Ljava/lang/Object;Lo/SuggestedAmount;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/setMutableMap;->extraCallback(Lo/applyTo;Lo/PlutusOrderJsonAdapter;Ljava/lang/Object;Lo/SuggestedAmount;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/setMutableMap;->onPostMessage(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    iget-object v1, p0, Lo/setMutableMap;->extraCallback:Lo/push;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/push;->extraCallback(Lo/GameCta;)Lo/applyTo;

    move-result-object v1

    new-instance v2, Lo/setUncaughtExceptionHandler;

    invoke-direct {v2, p0, v1, p1, v0}, Lo/setUncaughtExceptionHandler;-><init>(Lo/setMutableMap;Lo/applyTo;Ljava/lang/Object;Lo/SuggestedAmount;)V

    new-instance p1, Lo/BottomBarItemJsonAdapter;

    invoke-direct {p1, p0, v0, v1}, Lo/BottomBarItemJsonAdapter;-><init>(Lo/setMutableMap;Lo/SuggestedAmount;Lo/applyTo;)V

    invoke-virtual {v1, v2, p1}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    return-object v0
.end method
