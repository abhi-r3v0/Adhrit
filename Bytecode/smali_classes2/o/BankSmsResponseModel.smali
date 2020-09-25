.class final Lo/BankSmsResponseModel;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;
.implements Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method
