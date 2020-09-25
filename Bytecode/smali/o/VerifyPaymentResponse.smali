.class public final Lo/VerifyPaymentResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter$onNavigationEvent;


# instance fields
.field private final onMessageChannelReady:Lo/ResultJsonAdapter$onNavigationEvent;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/InitPayloadJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lo/VerifyPaymentResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 47
    new-instance v0, Lo/SurchargeInfoJsonAdapter;

    invoke-direct {v0, p2, p3}, Lo/SurchargeInfoJsonAdapter;-><init>(Ljava/lang/String;Lo/InitPayloadJsonAdapter;)V

    invoke-direct {p0, p1, p3, v0}, Lo/VerifyPaymentResponse;-><init>(Landroid/content/Context;Lo/InitPayloadJsonAdapter;Lo/ResultJsonAdapter$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/InitPayloadJsonAdapter;Lo/ResultJsonAdapter$onNavigationEvent;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/VerifyPaymentResponse;->onNavigationEvent:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lo/VerifyPaymentResponse;->onPostMessage:Lo/InitPayloadJsonAdapter;

    .line 73
    iput-object p3, p0, Lo/VerifyPaymentResponse;->onMessageChannelReady:Lo/ResultJsonAdapter$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Lo/ResultJsonAdapter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/VerifyPaymentResponse;->extraCallback()Lo/SessionData;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Lo/SessionData;
    .locals 3

    .line 78
    new-instance v0, Lo/SessionData;

    iget-object v1, p0, Lo/VerifyPaymentResponse;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p0, Lo/VerifyPaymentResponse;->onMessageChannelReady:Lo/ResultJsonAdapter$onNavigationEvent;

    .line 79
    invoke-interface {v2}, Lo/ResultJsonAdapter$onNavigationEvent;->ICustomTabsCallback()Lo/ResultJsonAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/SessionData;-><init>(Landroid/content/Context;Lo/ResultJsonAdapter;)V

    .line 80
    iget-object v1, p0, Lo/VerifyPaymentResponse;->onPostMessage:Lo/InitPayloadJsonAdapter;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0, v1}, Lo/SessionData;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    :cond_0
    return-object v0
.end method
