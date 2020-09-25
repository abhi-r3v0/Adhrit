.class public final Lo/supportNavigateUpTo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/supportNavigateUpTo$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/supportNavigateUpTo;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private final extraCallback:Ljava/util/concurrent/ExecutorService;

.field private final onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/supportNavigateUpTo;

    invoke-direct {v0}, Lo/supportNavigateUpTo;-><init>()V

    sput-object v0, Lo/supportNavigateUpTo;->onPostMessage:Lo/supportNavigateUpTo;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "java.runtime.name"

    .line 1017
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1021
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/onContentChanged;->onMessageChannelReady()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/supportNavigateUpTo;->extraCallback:Ljava/util/concurrent/ExecutorService;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/supportNavigateUpTo;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    new-instance v0, Lo/supportNavigateUpTo$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/supportNavigateUpTo$ICustomTabsCallback;-><init>(B)V

    iput-object v0, p0, Lo/supportNavigateUpTo;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static ICustomTabsCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 53
    sget-object v0, Lo/supportNavigateUpTo;->onPostMessage:Lo/supportNavigateUpTo;

    iget-object v0, v0, Lo/supportNavigateUpTo;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static extraCallback()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 44
    sget-object v0, Lo/supportNavigateUpTo;->onPostMessage:Lo/supportNavigateUpTo;

    iget-object v0, v0, Lo/supportNavigateUpTo;->onNavigationEvent:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static onMessageChannelReady()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 40
    sget-object v0, Lo/supportNavigateUpTo;->onPostMessage:Lo/supportNavigateUpTo;

    iget-object v0, v0, Lo/supportNavigateUpTo;->extraCallback:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
