.class public abstract Lo/isFabrikEnabled;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isFabrikEnabled$onMessageChannelReady;
    }
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
.field private final extraCallback:Z

.field private final onPostMessage:[Lo/setAmountRefunded;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo/isFabrikEnabled;->onPostMessage:[Lo/setAmountRefunded;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo/isFabrikEnabled;->extraCallback:Z

    return-void
.end method

.method private constructor <init>([Lo/setAmountRefunded;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo/isFabrikEnabled;->onPostMessage:[Lo/setAmountRefunded;

    .line 7
    iput-boolean p2, p0, Lo/isFabrikEnabled;->extraCallback:Z

    return-void
.end method

.method synthetic constructor <init>([Lo/setAmountRefunded;ZLo/getCalendarName;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lo/isFabrikEnabled;-><init>([Lo/setAmountRefunded;Z)V

    return-void
.end method

.method public static onPostMessage()Lo/isFabrikEnabled$onMessageChannelReady;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/isFabrikEnabled$onMessageChannelReady<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lo/isFabrikEnabled$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/isFabrikEnabled$onMessageChannelReady;-><init>(Lo/getCalendarName;)V

    return-object v0
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/isFabrikEnabled;->extraCallback:Z

    return v0
.end method

.method public final onMessageChannelReady()[Lo/setAmountRefunded;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/isFabrikEnabled;->onPostMessage:[Lo/setAmountRefunded;

    return-object v0
.end method

.method protected abstract onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
