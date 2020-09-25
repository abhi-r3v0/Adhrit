.class final Lo/updateTrackedQueryKeys$onMessageChannelReady;
.super Lo/pruneCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateTrackedQueryKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/pruneCache;

.field private final extraCallback:Lo/loadTrackedQueryKeys;


# direct methods
.method private constructor <init>(Lo/pruneCache;Lo/loadTrackedQueryKeys;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lo/pruneCache;-><init>()V

    .line 149
    iput-object p1, p0, Lo/updateTrackedQueryKeys$onMessageChannelReady;->ICustomTabsCallback:Lo/pruneCache;

    if-eqz p2, :cond_0

    .line 150
    check-cast p2, Lo/loadTrackedQueryKeys;

    iput-object p2, p0, Lo/updateTrackedQueryKeys$onMessageChannelReady;->extraCallback:Lo/loadTrackedQueryKeys;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interceptor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lo/pruneCache;Lo/loadTrackedQueryKeys;B)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lo/updateTrackedQueryKeys$onMessageChannelReady;-><init>(Lo/pruneCache;Lo/loadTrackedQueryKeys;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lo/updateTrackedQueryKeys$onMessageChannelReady;->ICustomTabsCallback:Lo/pruneCache;

    invoke-virtual {v0}, Lo/pruneCache;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lo/updateTrackedQueryKeys$onMessageChannelReady;->extraCallback:Lo/loadTrackedQueryKeys;

    iget-object v1, p0, Lo/updateTrackedQueryKeys$onMessageChannelReady;->ICustomTabsCallback:Lo/pruneCache;

    invoke-interface {v0, p1, p2, v1}, Lo/loadTrackedQueryKeys;->ICustomTabsCallback(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/pruneCache;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p1

    return-object p1
.end method
