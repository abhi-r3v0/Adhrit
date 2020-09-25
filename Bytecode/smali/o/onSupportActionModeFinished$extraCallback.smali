.class final Lo/onSupportActionModeFinished$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSupportActionModeFinished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/Runnable;

.field final onMessageChannelReady:Lo/onSupportActionModeFinished;


# direct methods
.method constructor <init>(Lo/onSupportActionModeFinished;Ljava/lang/Runnable;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lo/onSupportActionModeFinished$extraCallback;->onMessageChannelReady:Lo/onSupportActionModeFinished;

    .line 85
    iput-object p2, p0, Lo/onSupportActionModeFinished$extraCallback;->extraCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Lo/onSupportActionModeFinished$extraCallback;->extraCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lo/onSupportActionModeFinished$extraCallback;->onMessageChannelReady:Lo/onSupportActionModeFinished;

    invoke-virtual {v0}, Lo/onSupportActionModeFinished;->onPostMessage()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/onSupportActionModeFinished$extraCallback;->onMessageChannelReady:Lo/onSupportActionModeFinished;

    invoke-virtual {v1}, Lo/onSupportActionModeFinished;->onPostMessage()V

    .line 94
    throw v0
.end method
