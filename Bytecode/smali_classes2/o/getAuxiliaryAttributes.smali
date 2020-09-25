.class final Lo/getAuxiliaryAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getText2<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onPostMessage:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lo/getVersionNumber;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lo/getAuxiliaryAttributes;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/getAuxiliaryAttributes;->onPostMessage:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/getAuxiliaryAttributes;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p0, Lo/getAuxiliaryAttributes;->onPostMessage:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
