.class final Lo/onDataMessage$extraCallback$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage$extraCallback;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onDataMessage$extraCallback;

.field private synthetic onMessageChannelReady:Lo/sendAuthHelper$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/onDataMessage$extraCallback;Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lo/onDataMessage$extraCallback$4;->extraCallback:Lo/onDataMessage$extraCallback;

    iput-object p2, p0, Lo/onDataMessage$extraCallback$4;->onMessageChannelReady:Lo/sendAuthHelper$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 428
    iget-object v0, p0, Lo/onDataMessage$extraCallback$4;->extraCallback:Lo/onDataMessage$extraCallback;

    invoke-static {v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Lo/onDataMessage$extraCallback;)Lo/rotateRight;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$extraCallback$4;->onMessageChannelReady:Lo/sendAuthHelper$onMessageChannelReady;

    invoke-interface {v0, v1}, Lo/rotateRight;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void
.end method
