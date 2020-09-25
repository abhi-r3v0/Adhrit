.class final Lo/getMax$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMax;->extraCallback(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Ljava/lang/Throwable;

.field private synthetic onPostMessage:Lo/getMax;


# direct methods
.method constructor <init>(Lo/getMax;Ljava/lang/Throwable;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lo/getMax$6;->onPostMessage:Lo/getMax;

    iput-object p2, p0, Lo/getMax$6;->onNavigationEvent:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/getMax$6;->onPostMessage:Lo/getMax;

    .line 1034
    iget-object v0, v0, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    .line 169
    iget-object v1, p0, Lo/getMax$6;->onNavigationEvent:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->extraCallback(Ljava/lang/Throwable;)V

    return-void
.end method
