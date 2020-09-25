.class final Lo/ListInstrumentJsonAdapter$ICustomTabsCallback;
.super Lo/getMcc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onMessageChannelReady:J

.field private final onNavigationEvent:Lo/SessionCallResponseJsonAdapter;


# direct methods
.method public constructor <init>(Lo/SessionCallResponseJsonAdapter;JI)V
    .locals 4

    int-to-long v0, p4

    .line 618
    iget-object p4, p1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lo/getMcc;-><init>(JJ)V

    .line 619
    iput-object p1, p0, Lo/ListInstrumentJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Lo/SessionCallResponseJsonAdapter;

    .line 620
    iput-wide p2, p0, Lo/ListInstrumentJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:J

    return-void
.end method
