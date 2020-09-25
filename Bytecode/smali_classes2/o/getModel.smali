.class public interface abstract Lo/getModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/refreshAuth;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onNavigationEvent(Lo/CarrierFingerPrint;Lorg/json/JSONObject;)Lo/refreshAuth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CarrierFingerPrint;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method
