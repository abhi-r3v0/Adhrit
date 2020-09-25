.class final Lo/SuggestedPaymnetInstrument;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;


# instance fields
.field private final extraCallback:J

.field private final onNavigationEvent:I

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/SuggestedPaymnetInstrument;->onNavigationEvent:I

    iput-wide p2, p0, Lo/SuggestedPaymnetInstrument;->extraCallback:J

    iput-wide p4, p0, Lo/SuggestedPaymnetInstrument;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lo/SuggestedPaymnetInstrument;->onNavigationEvent:I

    iget-wide v1, p0, Lo/SuggestedPaymnetInstrument;->extraCallback:J

    iget-wide v3, p0, Lo/SuggestedPaymnetInstrument;->onPostMessage:J

    move-object v5, p1

    check-cast v5, Lo/PaymentInstrumentRequestJsonAdapter$onNavigationEvent;

    .line 1000
    invoke-static/range {v0 .. v5}, Lo/SuggestedPaymnetInstrumentJsonAdapter;->extraCallback(IJJLo/PaymentInstrumentRequestJsonAdapter$onNavigationEvent;)V

    return-void
.end method
