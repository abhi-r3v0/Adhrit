.class final Lo/getConditionalUserProperties;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:J

.field private final synthetic onMessageChannelReady:Lo/zzbfb;

.field private final synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/zzbfb;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getConditionalUserProperties;->onMessageChannelReady:Lo/zzbfb;

    iput-object p2, p0, Lo/getConditionalUserProperties;->onNavigationEvent:Ljava/lang/String;

    iput-wide p3, p0, Lo/getConditionalUserProperties;->ICustomTabsCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/getConditionalUserProperties;->onMessageChannelReady:Lo/zzbfb;

    iget-object v1, p0, Lo/getConditionalUserProperties;->onNavigationEvent:Ljava/lang/String;

    iget-wide v2, p0, Lo/getConditionalUserProperties;->ICustomTabsCallback:J

    invoke-static {v0, v1, v2, v3}, Lo/zzbfb;->onPostMessage(Lo/zzbfb;Ljava/lang/String;J)V

    return-void
.end method
