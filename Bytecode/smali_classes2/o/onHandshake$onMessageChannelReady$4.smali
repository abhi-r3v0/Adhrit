.class final Lo/onHandshake$onMessageChannelReady$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onHandshake$onMessageChannelReady;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onHandshake$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/onHandshake$onMessageChannelReady;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lo/onHandshake$onMessageChannelReady$4;->onPostMessage:Lo/onHandshake$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 233
    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady$4;->onPostMessage:Lo/onHandshake$onMessageChannelReady;

    iget-object v0, v0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v0}, Lo/onHandshake;->onNavigationEvent(Lo/onHandshake;)Z

    return-void
.end method
