.class final Lo/getLastChild$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getQueryDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLastChild;->onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/getQueryDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getQueryDefinition<",
        "Ljava/lang/Object;",
        "Lo/fromQueryDefinition<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getLastChild;

.field private synthetic onNavigationEvent:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lo/getLastChild;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/getLastChild$5;->ICustomTabsCallback:Lo/getLastChild;

    iput-object p2, p0, Lo/getLastChild$5;->onNavigationEvent:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/fromQueryDefinition;)Ljava/lang/Object;
    .locals 2

    .line 1045
    new-instance v0, Lo/getLastChild$onNavigationEvent;

    iget-object v1, p0, Lo/getLastChild$5;->ICustomTabsCallback:Lo/getLastChild;

    iget-object v1, v1, Lo/getLastChild;->onPostMessage:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lo/getLastChild$onNavigationEvent;-><init>(Ljava/util/concurrent/Executor;Lo/fromQueryDefinition;)V

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/reflect/Type;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/getLastChild$5;->onNavigationEvent:Ljava/lang/reflect/Type;

    return-object v0
.end method
