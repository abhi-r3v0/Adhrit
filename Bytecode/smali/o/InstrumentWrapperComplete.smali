.class final Lo/InstrumentWrapperComplete;
.super Ljava/lang/Object;

# interfaces
.implements Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final onNavigationEvent:Lo/logDecode;


# direct methods
.method public constructor <init>(Lo/logDecode;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InstrumentWrapperComplete;->onNavigationEvent:Lo/logDecode;

    iput-object p2, p0, Lo/InstrumentWrapperComplete;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/InstrumentWrapperComplete;->onNavigationEvent:Lo/logDecode;

    iget-object v1, p0, Lo/InstrumentWrapperComplete;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1000
    invoke-virtual {v0, v1, p1, p2, p3}, Lo/logDecode;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    return-void
.end method
