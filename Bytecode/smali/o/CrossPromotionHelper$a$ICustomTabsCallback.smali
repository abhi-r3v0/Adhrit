.class final Lo/CrossPromotionHelper$a$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrossPromotionHelper$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/CrossPromotionHelper$a;


# direct methods
.method private constructor <init>(Lo/CrossPromotionHelper$a;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrossPromotionHelper$a;Lo/CrossPromotionHelper$a$3;)V
    .locals 0

    .line 930
    invoke-direct {p0, p1}, Lo/CrossPromotionHelper$a$ICustomTabsCallback;-><init>(Lo/CrossPromotionHelper$a;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 1

    .line 934
    iget-object v0, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    invoke-static {v0}, Lo/CrossPromotionHelper$a;->onNavigationEvent(Lo/CrossPromotionHelper$a;)Lo/w$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/w$onMessageChannelReady;->ICustomTabsCallback(I)V

    .line 935
    iget-object v0, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    invoke-virtual {v0, p1}, Lo/CrossPromotionHelper$a;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 940
    iget-object v0, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    invoke-virtual {v0}, Lo/CrossPromotionHelper$a;->cancelAll()V

    .line 942
    iget-object v0, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/CrossPromotionHelper$a;->onNavigationEvent(Lo/CrossPromotionHelper$a;Z)Z

    return-void
.end method

.method public final onPostMessage(IJJ)V
    .locals 8

    .line 947
    iget-object v0, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    invoke-static {v0}, Lo/CrossPromotionHelper$a;->onNavigationEvent(Lo/CrossPromotionHelper$a;)Lo/w$onMessageChannelReady;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/w$onMessageChannelReady;->extraCallback(IJJ)V

    .line 948
    iget-object v2, p0, Lo/CrossPromotionHelper$a$ICustomTabsCallback;->onPostMessage:Lo/CrossPromotionHelper$a;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lo/CrossPromotionHelper$a;->onNavigationEvent(IJJ)V

    return-void
.end method
