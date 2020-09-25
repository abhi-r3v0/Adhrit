.class public final Lo/setPersistenceEnabled$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/net/Socket;

.field asBinder:Lo/getNode;

.field asInterface:Z

.field public extraCallback:Lo/fullLimitUpdateChild;

.field public onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Lo/setPersistenceEnabled$onMessageChannelReady;

.field public onPostMessage:Lo/filtersNodes;

.field public onTransact:Lo/toException;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    sget-object v0, Lo/setPersistenceEnabled$onMessageChannelReady;->onPostMessage:Lo/setPersistenceEnabled$onMessageChannelReady;

    iput-object v0, p0, Lo/setPersistenceEnabled$extraCallback;->onNavigationEvent:Lo/setPersistenceEnabled$onMessageChannelReady;

    .line 541
    sget-object v0, Lo/toException;->ICustomTabsCallback:Lo/toException;

    iput-object v0, p0, Lo/setPersistenceEnabled$extraCallback;->onTransact:Lo/toException;

    .line 542
    sget-object v0, Lo/getNode;->extraCallback:Lo/getNode;

    iput-object v0, p0, Lo/setPersistenceEnabled$extraCallback;->asBinder:Lo/getNode;

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lo/setPersistenceEnabled$extraCallback;->asInterface:Z

    return-void
.end method
