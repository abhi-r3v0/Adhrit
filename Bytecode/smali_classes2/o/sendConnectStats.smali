.class public final Lo/sendConnectStats;
.super Lio/grpc/ManagedChannelProvider;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/grpc/ManagedChannelProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Lo/translate;->onPostMessage(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/String;)Lo/getMaxKey;
    .locals 0

    .line 2046
    invoke-static {p1}, Lo/sendStats;->forTarget(Ljava/lang/String;)Lo/sendStats;

    move-result-object p1

    return-object p1
.end method
