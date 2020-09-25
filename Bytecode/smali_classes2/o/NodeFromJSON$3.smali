.class final Lo/NodeFromJSON$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NodeFromJSON;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getPredecessorChildName;

.field private synthetic extraCallback:Ljava/lang/Class;

.field private synthetic onPostMessage:Lo/NodeFromJSON;


# direct methods
.method constructor <init>(Lo/NodeFromJSON;Ljava/lang/Class;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/NodeFromJSON$3;->onPostMessage:Lo/NodeFromJSON;

    iput-object p2, p0, Lo/NodeFromJSON$3;->extraCallback:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lo/getPredecessorChildName;->ICustomTabsCallback()Lo/getPredecessorChildName;

    move-result-object p1

    iput-object p1, p0, Lo/NodeFromJSON$3;->ICustomTabsCallback:Lo/getPredecessorChildName;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    iget-object v0, p0, Lo/NodeFromJSON$3;->ICustomTabsCallback:Lo/getPredecessorChildName;

    invoke-virtual {v0, p2}, Lo/getPredecessorChildName;->extraCallback(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lo/NodeFromJSON$3;->ICustomTabsCallback:Lo/getPredecessorChildName;

    iget-object v1, p0, Lo/NodeFromJSON$3;->extraCallback:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lo/getPredecessorChildName;->ICustomTabsCallback(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1
    iget-object p1, p0, Lo/NodeFromJSON$3;->onPostMessage:Lo/NodeFromJSON;

    .line 147
    invoke-virtual {p1, p2}, Lo/NodeFromJSON;->extraCallback(Ljava/lang/reflect/Method;)Lo/leafCompare;

    move-result-object p1

    .line 148
    new-instance p2, Lo/compareLongDoubleNodes;

    invoke-direct {p2, p1, p3}, Lo/compareLongDoubleNodes;-><init>(Lo/leafCompare;[Ljava/lang/Object;)V

    .line 149
    iget-object p1, p1, Lo/leafCompare;->extraCallback:Lo/getQueryDefinition;

    invoke-interface {p1, p2}, Lo/getQueryDefinition;->extraCallback(Lo/fromQueryDefinition;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
