.class final Lo/makeOptionalFitsSystemWindows$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/makeOptionalFitsSystemWindows;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;


# direct methods
.method constructor <init>(Lo/makeOptionalFitsSystemWindows;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows$1;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$1;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->onPostMessage(Lo/makeOptionalFitsSystemWindows;)V

    .line 107
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$1;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady(Lo/makeOptionalFitsSystemWindows;)V

    .line 108
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$1;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->extraCallback(Lo/makeOptionalFitsSystemWindows;)V

    .line 109
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$1;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent(Lo/makeOptionalFitsSystemWindows;)V

    return-void
.end method
