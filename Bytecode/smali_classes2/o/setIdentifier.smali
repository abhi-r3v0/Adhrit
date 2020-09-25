.class public interface abstract Lo/setIdentifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onNavigationEvent(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method
