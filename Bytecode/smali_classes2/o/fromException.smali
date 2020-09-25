.class public final Lo/fromException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromException$onNavigationEvent;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getRef;

.field private volatile asBinder:Ljava/net/URI;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/setPriorityInternal;

.field public final onNavigationEvent:Lo/fromCode;

.field final onPostMessage:Ljava/lang/Object;

.field public volatile onTransact:Lo/onChildRemoved;


# direct methods
.method private constructor <init>(Lo/fromException$onNavigationEvent;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1120
    iget-object v0, p1, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    .line 40
    iput-object v0, p0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 2120
    iget-object v0, p1, Lo/fromException$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 3120
    iget-object v0, p1, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    .line 3312
    new-instance v1, Lo/getRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/getRef;-><init>(Lo/getRef$ICustomTabsCallback;B)V

    .line 42
    iput-object v1, p0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 4120
    iget-object v0, p1, Lo/fromException$onNavigationEvent;->ICustomTabsCallback:Lo/setPriorityInternal;

    .line 43
    iput-object v0, p0, Lo/fromException;->onMessageChannelReady:Lo/setPriorityInternal;

    .line 5120
    iget-object v0, p1, Lo/fromException$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6120
    iget-object p1, p1, Lo/fromException$onNavigationEvent;->extraCallback:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 44
    :goto_0
    iput-object p1, p0, Lo/fromException;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/fromException$onNavigationEvent;B)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/fromException;->asBinder:Ljava/net/URI;

    if-eqz v0, :cond_0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {v0}, Lo/fromCode;->extraCallback()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lo/fromException;->asBinder:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 7061
    iget-object v0, v0, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v0, p1}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/fromException;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/fromException;->onPostMessage:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
