.class public final Lo/onInstallReferrerServiceDisconnected;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getReferrerClickTimestampSeconds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getReferrerClickTimestampSeconds<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampServerSeconds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getReferrerClickTimestampSeconds<",
            "TK;TV;>;",
            "Lo/getReferrerClickTimestampServerSeconds;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/onInstallReferrerServiceDisconnected;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/onInstallReferrerServiceDisconnected;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    invoke-interface {v0, p1}, Lo/getReferrerClickTimestampSeconds;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/getRootAlpha<",
            "TV;>;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/onInstallReferrerServiceDisconnected;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    invoke-interface {v0, p1, p2}, Lo/getReferrerClickTimestampSeconds;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method
