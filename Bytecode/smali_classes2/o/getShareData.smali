.class final Lo/getShareData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onPostMessage:Lo/setEnable;


# direct methods
.method constructor <init>(Lo/setEnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getShareData;->onPostMessage:Lo/setEnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/getShareData;->onPostMessage:Lo/setEnable;

    invoke-static {v0}, Lo/setEnable;->onNavigationEvent(Lo/setEnable;)Lo/ReminderResponse;

    move-result-object v0

    new-instance v1, Lo/setReferenceId;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lo/setReferenceId;-><init>(I)V

    invoke-interface {v0, v1}, Lo/ReminderResponse;->onPostMessage(Lo/setReferenceId;)V

    return-void
.end method
