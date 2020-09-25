.class public abstract Lo/component3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;


# instance fields
.field public final ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

.field public final asBinder:J

.field public final asInterface:J

.field public final extraCallback:Lo/p$a;

.field public final onMessageChannelReady:Ljava/lang/Object;

.field public final onNavigationEvent:I

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Lo/EligibilityPayloadJsonAdapter;


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ILo/p$a;ILjava/lang/Object;JJ)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lo/EligibilityPayloadJsonAdapter;

    invoke-direct {v0, p1}, Lo/EligibilityPayloadJsonAdapter;-><init>(Lo/ResultJsonAdapter;)V

    iput-object v0, p0, Lo/component3;->onRelationshipValidationResult:Lo/EligibilityPayloadJsonAdapter;

    .line 93
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentRequestJsonAdapter;

    iput-object p1, p0, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    .line 94
    iput p3, p0, Lo/component3;->onPostMessage:I

    .line 95
    iput-object p4, p0, Lo/component3;->extraCallback:Lo/p$a;

    .line 96
    iput p5, p0, Lo/component3;->onNavigationEvent:I

    .line 97
    iput-object p6, p0, Lo/component3;->onMessageChannelReady:Ljava/lang/Object;

    .line 98
    iput-wide p7, p0, Lo/component3;->asInterface:J

    .line 99
    iput-wide p9, p0, Lo/component3;->asBinder:J

    return-void
.end method


# virtual methods
.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/component3;->onRelationshipValidationResult:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->ICustomTabsCallback$Stub()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lo/component3;->onRelationshipValidationResult:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->onRelationshipValidationResult()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 114
    iget-object v0, p0, Lo/component3;->onRelationshipValidationResult:Lo/EligibilityPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/EligibilityPayloadJsonAdapter;->onNavigationEvent()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage()J
    .locals 4

    .line 106
    iget-wide v0, p0, Lo/component3;->asBinder:J

    iget-wide v2, p0, Lo/component3;->asInterface:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
