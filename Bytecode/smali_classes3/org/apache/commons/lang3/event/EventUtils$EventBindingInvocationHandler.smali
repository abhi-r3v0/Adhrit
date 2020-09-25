.class Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/event/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventBindingInvocationHandler"
.end annotation


# instance fields
.field private final eventTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final methodName:Ljava/lang/String;

.field private final target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    .line 97
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->eventTypes:Ljava/util/Set;

    return-void
.end method

.method private hasMatchingParametersMethod(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->eventTypes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->eventTypes:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->hasMatchingParametersMethod(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 114
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->target:Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/commons/lang3/event/EventUtils$EventBindingInvocationHandler;->methodName:Ljava/lang/String;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
