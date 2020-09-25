.class final Lo/getLastChild;
.super Lo/getQueryDefinition$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getLastChild$onNavigationEvent;
    }
.end annotation


# instance fields
.field final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/getQueryDefinition$ICustomTabsCallback;-><init>()V

    .line 30
    iput-object p1, p0, Lo/getLastChild;->onPostMessage:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/getQueryDefinition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/getQueryDefinition<",
            "**>;"
        }
    .end annotation

    .line 1084
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 35
    const-class p3, Lo/fromQueryDefinition;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onNavigationEvent(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 39
    new-instance p2, Lo/getLastChild$5;

    invoke-direct {p2, p0, p1}, Lo/getLastChild$5;-><init>(Lo/getLastChild;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
