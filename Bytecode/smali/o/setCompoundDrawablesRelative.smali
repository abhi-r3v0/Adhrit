.class final Lo/setCompoundDrawablesRelative;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
.implements Lo/setVerticalOffset$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
        "TZ;>;",
        "Lo/setVerticalOffset$onNavigationEvent;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setCompoundDrawablesRelative<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field private final onPostMessage:Lo/setHorizontalOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lo/setCompoundDrawablesRelative$3;

    invoke-direct {v0}, Lo/setCompoundDrawablesRelative$3;-><init>()V

    const/16 v1, 0x14

    .line 19
    invoke-static {v1, v0}, Lo/setVerticalOffset;->onNavigationEvent(ILo/setVerticalOffset$extraCallback;)Lo/RatingCompat$StarStyle$extraCallback;

    move-result-object v0

    sput-object v0, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    new-instance v0, Lo/setHorizontalOffset$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setHorizontalOffset$ICustomTabsCallback;-><init>()V

    .line 27
    iput-object v0, p0, Lo/setCompoundDrawablesRelative;->onPostMessage:Lo/setHorizontalOffset;

    return-void
.end method

.method static onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelative;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TZ;>;)",
            "Lo/setCompoundDrawablesRelative<",
            "TZ;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setCompoundDrawablesRelative;

    if-eqz v0, :cond_0

    check-cast v0, Lo/setCompoundDrawablesRelative;

    const/4 v1, 0x0

    .line 1045
    iput-boolean v1, v0, Lo/setCompoundDrawablesRelative;->onMessageChannelReady:Z

    const/4 v1, 0x1

    .line 1046
    iput-boolean v1, v0, Lo/setCompoundDrawablesRelative;->onNavigationEvent:Z

    .line 1047
    iput-object p0, v0, Lo/setCompoundDrawablesRelative;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    return-object v0

    .line 1029
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final declared-synchronized ICustomTabsCallback()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->onPostMessage:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 58
    iget-boolean v0, p0, Lo/setCompoundDrawablesRelative;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lo/setCompoundDrawablesRelative;->onNavigationEvent:Z

    .line 62
    iget-boolean v0, p0, Lo/setCompoundDrawablesRelative;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lo/setCompoundDrawablesRelative;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->extraCallback()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final f_()Lo/setHorizontalOffset;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->onPostMessage:Lo/setHorizontalOffset;

    return-object v0
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->onPostMessage:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/setCompoundDrawablesRelative;->onMessageChannelReady:Z

    .line 89
    iget-boolean v0, p0, Lo/setCompoundDrawablesRelative;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    const/4 v0, 0x0

    .line 2051
    iput-object v0, p0, Lo/setCompoundDrawablesRelative;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 2052
    sget-object v0, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 81
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/setCompoundDrawablesRelative;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
