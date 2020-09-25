.class public final Lo/PaymentStatusJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SessionCallResponse;


# instance fields
.field private final extraCallback:Lo/SessionCallResponse;

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SessionCallResponse;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionCallResponse;",
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/PaymentStatusJsonAdapter;->extraCallback:Lo/SessionCallResponse;

    .line 40
    iput-object p2, p0, Lo/PaymentStatusJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/EligibilityPayload$onNavigationEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/EligibilityPayload$onNavigationEvent<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lo/decodeStream;

    iget-object v1, p0, Lo/PaymentStatusJsonAdapter;->extraCallback:Lo/SessionCallResponse;

    .line 46
    invoke-interface {v1}, Lo/SessionCallResponse;->onNavigationEvent()Lo/EligibilityPayload$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lo/PaymentStatusJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lo/decodeStream;-><init>(Lo/EligibilityPayload$onNavigationEvent;Ljava/util/List;)V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/ShortCircuitInfo;)Lo/EligibilityPayload$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ShortCircuitInfo;",
            ")",
            "Lo/EligibilityPayload$onNavigationEvent<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lo/decodeStream;

    iget-object v1, p0, Lo/PaymentStatusJsonAdapter;->extraCallback:Lo/SessionCallResponse;

    .line 53
    invoke-interface {v1, p1}, Lo/SessionCallResponse;->onNavigationEvent(Lo/ShortCircuitInfo;)Lo/EligibilityPayload$onNavigationEvent;

    move-result-object p1

    iget-object v1, p0, Lo/PaymentStatusJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lo/decodeStream;-><init>(Lo/EligibilityPayload$onNavigationEvent;Ljava/util/List;)V

    return-object v0
.end method
