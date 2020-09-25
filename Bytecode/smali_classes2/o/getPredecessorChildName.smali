.class public Lo/getPredecessorChildName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPredecessorChildName$extraCallback;,
        Lo/getPredecessorChildName$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/getPredecessorChildName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lo/getPredecessorChildName;->onNavigationEvent()Lo/getPredecessorChildName;

    move-result-object v0

    sput-object v0, Lo/getPredecessorChildName;->onMessageChannelReady:Lo/getPredecessorChildName;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/getPredecessorChildName;
    .locals 1

    .line 32
    sget-object v0, Lo/getPredecessorChildName;->onMessageChannelReady:Lo/getPredecessorChildName;

    return-object v0
.end method

.method private static onNavigationEvent()Lo/getPredecessorChildName;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lo/getPredecessorChildName$extraCallback;

    invoke-direct {v0}, Lo/getPredecessorChildName$extraCallback;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    :try_start_1
    const-string v0, "java.util.Optional"

    .line 44
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    new-instance v0, Lo/getPredecessorChildName$onNavigationEvent;

    invoke-direct {v0}, Lo/getPredecessorChildName$onNavigationEvent;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 48
    :catch_1
    new-instance v0, Lo/getPredecessorChildName;

    invoke-direct {v0}, Lo/getPredecessorChildName;-><init>()V

    return-object v0
.end method


# virtual methods
.method varargs ICustomTabsCallback(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method extraCallback(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageChannelReady(Ljava/util/concurrent/Executor;)Lo/getQueryDefinition$ICustomTabsCallback;
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    new-instance v0, Lo/getLastChild;

    invoke-direct {v0, p1}, Lo/getLastChild;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 59
    :cond_0
    sget-object p1, Lo/getPriorityHash;->onMessageChannelReady:Lo/getQueryDefinition$ICustomTabsCallback;

    return-object p1
.end method
