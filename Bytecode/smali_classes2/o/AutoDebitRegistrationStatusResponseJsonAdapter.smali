.class final synthetic Lo/AutoDebitRegistrationStatusResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText3;


# instance fields
.field private final onPostMessage:Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;


# direct methods
.method constructor <init>(Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoDebitRegistrationStatusResponseJsonAdapter;->onPostMessage:Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/AutoDebitRegistrationStatusResponseJsonAdapter;->onPostMessage:Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lo/AutoDebitRequestBody_MandateDetailJsonAdapter;->onMessageChannelReady(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
