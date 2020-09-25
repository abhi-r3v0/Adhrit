.class public final Lo/isFabrikEnabled$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isFabrikEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lo/setCustomAmount$onMessageChannelReady;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public onNavigationEvent:Lo/Transaction$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Transaction$$Parcelable<",
            "TA;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field public onPostMessage:[Lo/setAmountRefunded;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/isFabrikEnabled$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/getCalendarName;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/isFabrikEnabled$onMessageChannelReady;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/isFabrikEnabled$onMessageChannelReady;)Lo/Transaction$$Parcelable;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Lo/Transaction$$Parcelable;)Lo/isFabrikEnabled$onMessageChannelReady;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Transaction$$Parcelable<",
            "TA;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;>;)",
            "Lo/isFabrikEnabled$onMessageChannelReady<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    return-object p0
.end method

.method public final varargs onNavigationEvent([Lo/setAmountRefunded;)Lo/isFabrikEnabled$onMessageChannelReady;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/setAmountRefunded;",
            ")",
            "Lo/isFabrikEnabled$onMessageChannelReady<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage:[Lo/setAmountRefunded;

    return-object p0
.end method

.method public final onPostMessage()Lo/isFabrikEnabled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isFabrikEnabled<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent:Lo/Transaction$$Parcelable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Lo/getRemindersMap;

    iget-object v1, p0, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage:[Lo/setAmountRefunded;

    iget-boolean v2, p0, Lo/isFabrikEnabled$onMessageChannelReady;->ICustomTabsCallback:Z

    invoke-direct {v0, p0, v1, v2}, Lo/getRemindersMap;-><init>(Lo/isFabrikEnabled$onMessageChannelReady;[Lo/setAmountRefunded;Z)V

    return-object v0

    .line 1035
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "execute parameter required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
