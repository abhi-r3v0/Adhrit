.class final Lo/getChildItemId$extraCallback;
.super Lo/Worker;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildItemId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Worker<",
        "Ljava/lang/Void;",
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007H\u0014J\u0018\u0010\u0008\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007H\u0014J\u0018\u0010\t\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachinePreFetcher$ImagePrefetchObserver;",
        "Lcom/facebook/datasource/BaseDataSubscriber;",
        "Ljava/lang/Void;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachinePreFetcher;)V",
        "onFailureImpl",
        "",
        "dataSource",
        "Lcom/facebook/datasource/DataSource;",
        "onNewResultImpl",
        "onProgressUpdate",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getChildItemId;


# direct methods
.method public constructor <init>(Lo/getChildItemId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    invoke-direct {p0}, Lo/Worker;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/WorkDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    const/4 v0, 0x1

    .line 4017
    iput-boolean v0, p1, Lo/getChildItemId;->onPostMessage:Z

    .line 111
    iget-object p1, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    .line 5017
    iget-object p1, p1, Lo/getChildItemId;->asInterface:Lo/setActive;

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/WorkDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    .line 1017
    iget-object v0, v0, Lo/getChildItemId;->onNavigationEvent:Ljava/util/Map;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 101
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    .line 2017
    iget v0, p1, Lo/getChildItemId;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    .line 3017
    iput v0, p1, Lo/getChildItemId;->extraCallback:I

    .line 103
    iget-object p1, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    invoke-static {p1}, Lo/getChildItemId;->onMessageChannelReady(Lo/getChildItemId;)V

    return-void
.end method

.method public final onPostMessage(Lo/WorkDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    .line 6017
    iget-object v0, v0, Lo/getChildItemId;->onNavigationEvent:Ljava/util/Map;

    .line 115
    invoke-interface {p1}, Lo/WorkDatabase;->asBinder()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lo/getChildItemId$extraCallback;->onNavigationEvent:Lo/getChildItemId;

    invoke-static {p1}, Lo/getChildItemId;->onMessageChannelReady(Lo/getChildItemId;)V

    return-void
.end method
