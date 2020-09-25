.class final Lo/onDataMessage$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage;->onMessageChannelReady(Lo/emptyMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onDataMessage;

.field private synthetic onPostMessage:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/onDataMessage;Lo/emptyMap;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lo/onDataMessage$11;->extraCallback:Lo/onDataMessage;

    iput-object p2, p0, Lo/onDataMessage$11;->onPostMessage:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 297
    iget-object v0, p0, Lo/onDataMessage$11;->extraCallback:Lo/onDataMessage;

    invoke-static {v0}, Lo/onDataMessage;->onPostMessage(Lo/onDataMessage;)Lo/colorFlip;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$11;->onPostMessage:Lo/emptyMap;

    invoke-interface {v0, v1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    return-void
.end method
