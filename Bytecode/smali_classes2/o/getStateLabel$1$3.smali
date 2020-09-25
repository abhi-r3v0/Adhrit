.class final Lo/getStateLabel$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateLabel$1;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroid/os/Bundle;

.field final synthetic onPostMessage:Lo/getStateLabel$1;


# direct methods
.method constructor <init>(Lo/getStateLabel$1;Landroid/os/Bundle;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/getStateLabel$1$3;->onPostMessage:Lo/getStateLabel$1;

    iput-object p2, p0, Lo/getStateLabel$1$3;->onMessageChannelReady:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
