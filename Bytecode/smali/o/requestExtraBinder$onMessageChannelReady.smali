.class public final Lo/requestExtraBinder$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/requestExtraBinder$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestExtraBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:I

.field final synthetic onMessageChannelReady:Lo/requestExtraBinder;

.field final onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/requestExtraBinder;Ljava/lang/String;II)V
    .locals 0

    .line 2949
    iput-object p1, p0, Lo/requestExtraBinder$onMessageChannelReady;->onMessageChannelReady:Lo/requestExtraBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2950
    iput-object p2, p0, Lo/requestExtraBinder$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 2951
    iput p3, p0, Lo/requestExtraBinder$onMessageChannelReady;->extraCallback:I

    .line 2952
    iput p4, p0, Lo/requestExtraBinder$onMessageChannelReady;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2958
    iget-object v0, p0, Lo/requestExtraBinder$onMessageChannelReady;->onMessageChannelReady:Lo/requestExtraBinder;

    iget-object v0, v0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/requestExtraBinder$onMessageChannelReady;->extraCallback:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lo/requestExtraBinder$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2961
    iget-object v0, p0, Lo/requestExtraBinder$onMessageChannelReady;->onMessageChannelReady:Lo/requestExtraBinder;

    iget-object v0, v0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 3581
    invoke-virtual {v0}, Lo/requestExtraBinder;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2968
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder$onMessageChannelReady;->onMessageChannelReady:Lo/requestExtraBinder;

    iget-object v3, p0, Lo/requestExtraBinder$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget v4, p0, Lo/requestExtraBinder$onMessageChannelReady;->extraCallback:I

    iget v5, p0, Lo/requestExtraBinder$onMessageChannelReady;->onNavigationEvent:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lo/requestExtraBinder;->onMessageChannelReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
