.class final Lo/getMax$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMax;->b_(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/getMax;


# direct methods
.method constructor <init>(Lo/getMax;I)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/getMax$2;->onMessageChannelReady:Lo/getMax;

    iput p2, p0, Lo/getMax$2;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 139
    iget-object v0, p0, Lo/getMax$2;->onMessageChannelReady:Lo/getMax;

    .line 1034
    iget-object v0, v0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    .line 139
    iget v1, p0, Lo/getMax$2;->extraCallback:I

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->b_(I)V

    return-void
.end method
