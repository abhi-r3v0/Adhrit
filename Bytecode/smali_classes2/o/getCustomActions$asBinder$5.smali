.class final Lo/getCustomActions$asBinder$5;
.super Lo/getCustomActions$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCustomActions$asBinder;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getCustomActions$asBinder;


# direct methods
.method constructor <init>(Lo/getCustomActions$asBinder;)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lo/getCustomActions$asBinder$5;->onMessageChannelReady:Lo/getCustomActions$asBinder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/getCustomActions$ICustomTabsCallback;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1362
    iget-object v0, p0, Lo/getCustomActions$asBinder$5;->onMessageChannelReady:Lo/getCustomActions$asBinder;

    invoke-virtual {v0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    return-void
.end method
