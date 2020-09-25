.class final Lo/SuggestedPi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

.field private final extraCallback:Lo/SuggestedPaymnetInstrumentJsonAdapter;


# direct methods
.method public constructor <init>(Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;Lo/SuggestedPaymnetInstrumentJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SuggestedPi;->ICustomTabsCallback:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    iput-object p2, p0, Lo/SuggestedPi;->extraCallback:Lo/SuggestedPaymnetInstrumentJsonAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/SuggestedPi;->ICustomTabsCallback:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    iget-object v1, p0, Lo/SuggestedPi;->extraCallback:Lo/SuggestedPaymnetInstrumentJsonAdapter;

    .line 1000
    invoke-virtual {v0, v1}, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->extraCallback(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V

    return-void
.end method
