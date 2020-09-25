.class public final Lo/reverseIteratorFrom$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field private static synthetic onNavigationEvent:Z


# instance fields
.field public final extraCallback:Ljava/lang/Object;

.field public final onMessageChannelReady:Lo/emptyMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 852
    const-class v0, Lo/reverseIteratorFrom;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/reverseIteratorFrom$onPostMessage;->onNavigationEvent:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 875
    iput-object p1, p0, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 876
    iput-object p1, p0, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "config"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lo/emptyMap;)V
    .locals 4

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 881
    move-object v0, p1

    check-cast v0, Lo/emptyMap;

    iput-object v0, p0, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    .line 3516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    if-eqz v0, :cond_1

    return-void

    .line 4217
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "cannot use OK status: %s"

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "status"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 1

    .line 868
    new-instance v0, Lo/reverseIteratorFrom$onPostMessage;

    invoke-direct {v0, p0}, Lo/reverseIteratorFrom$onPostMessage;-><init>(Lo/emptyMap;)V

    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 1

    .line 859
    new-instance v0, Lo/reverseIteratorFrom$onPostMessage;

    invoke-direct {v0, p0}, Lo/reverseIteratorFrom$onPostMessage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 906
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 909
    :cond_1
    check-cast p1, Lo/reverseIteratorFrom$onPostMessage;

    .line 910
    iget-object v2, p0, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    iget-object v3, p1, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    .line 5052
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    .line 910
    iget-object v2, p0, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    iget-object p1, p1, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-eq v2, p1, :cond_5

    if-eqz v2, :cond_4

    .line 6052
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 915
    iget-object v1, p0, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 920
    iget-object v0, p0, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 921
    iget-object v1, p0, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    const-string v2, "config"

    .line 922
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 925
    :cond_0
    sget-boolean v0, Lo/reverseIteratorFrom$onPostMessage;->onNavigationEvent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7105
    :cond_2
    :goto_0
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 926
    iget-object v1, p0, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    const-string v2, "error"

    .line 927
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
