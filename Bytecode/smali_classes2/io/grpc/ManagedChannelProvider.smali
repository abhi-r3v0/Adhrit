.class public abstract Lio/grpc/ManagedChannelProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelProvider$onPostMessage;,
        Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lio/grpc/ManagedChannelProvider;

.field private static onNavigationEvent:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const-class v0, Lio/grpc/ManagedChannelProvider;

    new-instance v1, Lio/grpc/ManagedChannelProvider$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/grpc/ManagedChannelProvider$onPostMessage;-><init>(B)V

    sput-object v1, Lio/grpc/ManagedChannelProvider;->onNavigationEvent:Ljava/lang/Iterable;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/grpc/ManagedChannelProvider$5;

    invoke-direct {v4}, Lio/grpc/ManagedChannelProvider$5;-><init>()V

    .line 1042
    invoke-static {v0, v1, v3, v4}, Lo/translate;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lo/translate$extraCallback;)Ljava/util/List;

    move-result-object v0

    .line 1043
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1046
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 37
    :goto_0
    check-cast v0, Lio/grpc/ManagedChannelProvider;

    sput-object v0, Lio/grpc/ManagedChannelProvider;->onMessageChannelReady:Lio/grpc/ManagedChannelProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lio/grpc/ManagedChannelProvider;
    .locals 2

    .line 59
    sget-object v0, Lio/grpc/ManagedChannelProvider;->onMessageChannelReady:Lio/grpc/ManagedChannelProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string v1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v0, v1}, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract onMessageChannelReady()I
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/getMaxKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/getMaxKey<",
            "*>;"
        }
    .end annotation
.end method
