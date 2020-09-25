.class final Lo/getMax$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMax;->onMessageChannelReady(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getMax;

.field private synthetic onMessageChannelReady:Z


# direct methods
.method constructor <init>(Lo/getMax;Z)V
    .locals 0

    .line 155
    iput-object p1, p0, Lo/getMax$4;->extraCallback:Lo/getMax;

    iput-boolean p2, p0, Lo/getMax$4;->onMessageChannelReady:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lo/getMax$4;->extraCallback:Lo/getMax;

    .line 1034
    iget-object v0, v0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    .line 158
    iget-boolean v1, p0, Lo/getMax$4;->onMessageChannelReady:Z

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->onMessageChannelReady(Z)V

    return-void
.end method
