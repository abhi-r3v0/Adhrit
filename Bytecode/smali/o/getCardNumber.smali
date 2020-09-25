.class final Lo/getCardNumber;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/getCardExpiry$onMessageChannelReady;

.field private final onNavigationEvent:J

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(Lo/getCardExpiry$onMessageChannelReady;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCardNumber;->extraCallback:Lo/getCardExpiry$onMessageChannelReady;

    iput-object p2, p0, Lo/getCardNumber;->ICustomTabsCallback:Ljava/lang/String;

    iput-wide p3, p0, Lo/getCardNumber;->onNavigationEvent:J

    iput-wide p5, p0, Lo/getCardNumber;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lo/getCardNumber;->extraCallback:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lo/getCardNumber;->ICustomTabsCallback:Ljava/lang/String;

    iget-wide v2, p0, Lo/getCardNumber;->onNavigationEvent:J

    iget-wide v4, p0, Lo/getCardNumber;->onPostMessage:J

    .line 1000
    invoke-virtual/range {v0 .. v5}, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage(Ljava/lang/String;JJ)V

    return-void
.end method
