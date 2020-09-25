.class public final Lo/HighlightsListViewHolder$layoutManager$1;
.super Ljava/lang/Object;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private onMessageChannelReady:J

.field private onNavigationEvent:I

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/HighlightsListViewHolder$layoutManager$1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/HighlightsListViewHolder$layoutManager$1;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/HighlightsListViewHolder$layoutManager$1;)I
    .locals 0

    iget p0, p0, Lo/HighlightsListViewHolder$layoutManager$1;->onNavigationEvent:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/HighlightsListViewHolder$layoutManager$1;)J
    .locals 2

    iget-wide v0, p0, Lo/HighlightsListViewHolder$layoutManager$1;->onMessageChannelReady:J

    return-wide v0
.end method

.method static synthetic onPostMessage(Lo/HighlightsListViewHolder$layoutManager$1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;
    .locals 0

    iput-object p1, p0, Lo/HighlightsListViewHolder$layoutManager$1;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;
    .locals 0

    iput-object p1, p0, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onPostMessage(I)Lo/HighlightsListViewHolder$layoutManager$1;
    .locals 0

    iput p1, p0, Lo/HighlightsListViewHolder$layoutManager$1;->onNavigationEvent:I

    return-object p0
.end method

.method public final onPostMessage(J)Lo/HighlightsListViewHolder$layoutManager$1;
    .locals 0

    iput-wide p1, p0, Lo/HighlightsListViewHolder$layoutManager$1;->onMessageChannelReady:J

    return-object p0
.end method

.method public final onPostMessage()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
    .locals 2

    new-instance v0, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;-><init>(Lo/HighlightsListViewHolder$layoutManager$1;Lo/SmartStatementFragment$onViewCreated$$inlined$with$lambda$1$1;)V

    return-object v0
.end method
