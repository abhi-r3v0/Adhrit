.class final Lo/shouldIncludeCompoundHash$ICustomTabsCallback;
.super Lo/onKill;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/moveRedLeft;

.field private final onPostMessage:Lo/resume;


# direct methods
.method private constructor <init>(Lo/resume;Lo/moveRedLeft;)V
    .locals 0

    .line 622
    invoke-direct {p0}, Lo/onKill;-><init>()V

    .line 623
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onPostMessage:Lo/resume;

    .line 624
    iput-object p2, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onMessageChannelReady:Lo/moveRedLeft;

    return-void
.end method

.method synthetic constructor <init>(Lo/resume;Lo/moveRedLeft;B)V
    .locals 0

    .line 618
    invoke-direct {p0, p1, p2}, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;-><init>(Lo/resume;Lo/moveRedLeft;)V

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()Lo/resume;
    .locals 1

    .line 629
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$ICustomTabsCallback;->onPostMessage:Lo/resume;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/colorFlip;"
        }
    .end annotation

    .line 635
    invoke-super {p0, p1, p2, p3}, Lo/onKill;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1

    .line 636
    new-instance p2, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;

    invoke-direct {p2, p0, p1}, Lo/shouldIncludeCompoundHash$ICustomTabsCallback$4;-><init>(Lo/shouldIncludeCompoundHash$ICustomTabsCallback;Lo/colorFlip;)V

    return-object p2
.end method
