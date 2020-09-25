.class final Lo/isItemChanged$getInterfaceDescriptor$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isItemChanged$getInterfaceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<no name provided>",
        "",
        "view",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/isItemChanged$getInterfaceDescriptor;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor$onNavigationEvent;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 67
    check-cast p1, Landroid/view/View;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    iget-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor$onNavigationEvent;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    iget-object p1, p1, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->ICustomTabsService(Lo/isItemChanged;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1276
    iget-object v1, p0, Lo/isItemChanged$getInterfaceDescriptor$onNavigationEvent;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    iget-object v1, v1, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 2069
    iget-object v1, v1, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    if-eqz v1, :cond_0

    .line 3038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lo/evictionCount;->onNavigationEvent()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v4, 0x3e8

    .line 1276
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "time_spent"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1275
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "track_bb_new_user_landing_page_unlock_cta"

    .line 1273
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 67
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
