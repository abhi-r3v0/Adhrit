.class final Lo/getCustomActions$4;
.super Lo/getCustomActions$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/getCustomActions$4;->onMessageChannelReady:Lo/getCustomActions;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/getCustomActions$ICustomTabsCallback;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 136
    iget-object v0, p0, Lo/getCustomActions$4;->onMessageChannelReady:Lo/getCustomActions;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/getCustomActions;->onPostMessage:Z

    .line 137
    iget-object v0, p0, Lo/getCustomActions$4;->onMessageChannelReady:Lo/getCustomActions;

    iget-object v0, v0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 1303
    iput-boolean v1, v0, Lo/getPosition;->ICustomTabsCallback:Z

    return-void
.end method
