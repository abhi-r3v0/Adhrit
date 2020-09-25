.class public final Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:I

.field private final onMessageChannelReady:Ljava/lang/String;

.field public final onPostMessage:J


# direct methods
.method private constructor <init>(Lo/HighlightsListViewHolder$layoutManager$1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(Lo/HighlightsListViewHolder$layoutManager$1;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p1}, Lo/HighlightsListViewHolder$layoutManager$1;->ICustomTabsCallback(Lo/HighlightsListViewHolder$layoutManager$1;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1}, Lo/HighlightsListViewHolder$layoutManager$1;->extraCallback(Lo/HighlightsListViewHolder$layoutManager$1;)I

    move-result v0

    iput v0, p0, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:I

    invoke-static {p1}, Lo/HighlightsListViewHolder$layoutManager$1;->onNavigationEvent(Lo/HighlightsListViewHolder$layoutManager$1;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:J

    return-void
.end method

.method synthetic constructor <init>(Lo/HighlightsListViewHolder$layoutManager$1;Lo/SmartStatementFragment$onViewCreated$$inlined$with$lambda$1$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;-><init>(Lo/HighlightsListViewHolder$layoutManager$1;)V

    return-void
.end method
