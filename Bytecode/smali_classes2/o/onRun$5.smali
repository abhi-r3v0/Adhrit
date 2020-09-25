.class public final Lo/onRun$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/Boolean;

.field private synthetic extraCallback:Ljava/util/concurrent/ThreadFactory;

.field private synthetic onMessageChannelReady:Ljava/lang/Integer;

.field private synthetic onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

.field private synthetic onPostMessage:Ljava/lang/String;

.field private synthetic onRelationshipValidationResult:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/onRun$5;->extraCallback:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lo/onRun$5;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/onRun$5;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lo/onRun$5;->ICustomTabsCallback:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/onRun$5;->onMessageChannelReady:Ljava/lang/Integer;

    iput-object p1, p0, Lo/onRun$5;->onRelationshipValidationResult:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    .line 163
    iget-object v0, p0, Lo/onRun$5;->extraCallback:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lo/onRun$5;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 165
    iget-object v3, p0, Lo/onRun$5;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1182
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lo/onRun$5;->ICustomTabsCallback:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 170
    :cond_1
    iget-object v0, p0, Lo/onRun$5;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lo/onRun$5;->onRelationshipValidationResult:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3
    return-object p1
.end method
