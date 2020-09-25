.class final Lo/getInsightType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:F

.field private final onMessageChannelReady:Lo/getCardExpiry$onMessageChannelReady;

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/getCardExpiry$onMessageChannelReady;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getInsightType;->onMessageChannelReady:Lo/getCardExpiry$onMessageChannelReady;

    iput p2, p0, Lo/getInsightType;->ICustomTabsCallback:I

    iput p3, p0, Lo/getInsightType;->onNavigationEvent:I

    iput p4, p0, Lo/getInsightType;->onPostMessage:I

    iput p5, p0, Lo/getInsightType;->extraCallback:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lo/getInsightType;->onMessageChannelReady:Lo/getCardExpiry$onMessageChannelReady;

    iget v1, p0, Lo/getInsightType;->ICustomTabsCallback:I

    iget v2, p0, Lo/getInsightType;->onNavigationEvent:I

    iget v3, p0, Lo/getInsightType;->onPostMessage:I

    iget v4, p0, Lo/getInsightType;->extraCallback:F

    .line 1000
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/getCardExpiry$onMessageChannelReady;->onNavigationEvent(IIIF)V

    return-void
.end method
