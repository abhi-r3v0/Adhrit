.class public final Lo/RetryInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SessionCallResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/EligibilityPayload$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/EligibilityPayload$onNavigationEvent<",
            "Lo/ShortCircuitInfoJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lo/RetryInfoJsonAdapter;

    invoke-direct {v0}, Lo/RetryInfoJsonAdapter;-><init>()V

    return-object v0
.end method

.method public final onNavigationEvent(Lo/ShortCircuitInfo;)Lo/EligibilityPayload$onNavigationEvent;
    .locals 1
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

    .line 31
    new-instance v0, Lo/RetryInfoJsonAdapter;

    invoke-direct {v0, p1}, Lo/RetryInfoJsonAdapter;-><init>(Lo/ShortCircuitInfo;)V

    return-object v0
.end method
