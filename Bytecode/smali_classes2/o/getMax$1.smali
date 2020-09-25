.class final Lo/getMax$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMax;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getMax;


# direct methods
.method constructor <init>(Lo/getMax;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lo/getMax$1;->onPostMessage:Lo/getMax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/getMax$1;->onPostMessage:Lo/getMax;

    .line 1034
    iget-object v0, v0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 128
    invoke-virtual {v0}, Lo/interrupt;->close()V

    return-void
.end method
