.class public final Lo/onKeyDown;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field final asBinder:Lo/rerunTransactionQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rerunTransactionQueue<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

.field public onNavigationEvent:I

.field public final onPostMessage:Lo/isSameListener;

.field final onRelationshipValidationResult:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lo/rerunTransactionQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lo/rerunTransactionQueue<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;-",
            "Ljava/util/List<",
            "Lclub/cred/interjection/data/models/Campaign;",
            ">;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEvent"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/onKeyDown;->asBinder:Lo/rerunTransactionQueue;

    .line 19
    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 130
    sget-object p2, Lo/onKeyDown$onNavigationEvent;->onMessageChannelReady:Lo/onKeyDown$onNavigationEvent;

    check-cast p2, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 130
    iput-object v0, p0, Lo/onKeyDown;->onPostMessage:Lo/isSameListener;

    .line 20
    sget-object p2, Lo/setBackgroundResource;->onPostMessage:Lo/setBackgroundResource;

    const-string p2, "application"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    sput-object p1, Lo/setBackgroundResource;->onNavigationEvent:Landroid/app/Application;

    .line 3000
    sget-object p1, Lo/setBackgroundResource;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lclub/cred/interjection/data/db/CampaignDatabase;

    const-string p2, "db"

    .line 2020
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 22
    sget-object p1, Lo/closeOptionsMenu;->extraCallback:Lo/closeOptionsMenu;

    .line 4000
    sget-object p1, Lo/closeOptionsMenu;->onNavigationEvent:Lo/SortedList$Callback;

    sget-object p2, Lo/closeOptionsMenu;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lo/SortedListAdapterCallback;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 22
    iput p1, p0, Lo/onKeyDown;->ICustomTabsCallback:I

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/onKeyDown;->extraCallback:Ljava/util/HashMap;

    .line 27
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/onKeyDown;->onRelationshipValidationResult:Ljava/util/HashSet;

    .line 4045
    sget-object p1, Lo/getResources;->onNavigationEvent:Lo/getResources;

    new-instance p2, Lo/onKeyDown$extraCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lo/onKeyDown$extraCallback;-><init>(Lo/onKeyDown;Lo/getServerTime;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 5024
    iput v0, p0, Lo/onKeyDown;->onNavigationEvent:I

    .line 5027
    iget-object v0, p0, Lo/onKeyDown;->onRelationshipValidationResult:Ljava/util/HashSet;

    .line 4061
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 6025
    iget-object v0, p0, Lo/onKeyDown;->extraCallback:Ljava/util/HashMap;

    .line 4062
    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 4063
    sget-object v0, Lo/closeOptionsMenu;->extraCallback:Lo/closeOptionsMenu;

    .line 7000
    sget-object v0, Lo/closeOptionsMenu;->onPostMessage:Lo/copyArray;

    sget-object v1, Lo/closeOptionsMenu;->onMessageChannelReady:[Lo/applyUserOverwrite;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 7015
    iget-object v0, p0, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 4064
    invoke-virtual {v0}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v0

    invoke-interface {v0}, Lo/createTextView;->extraCallback()V

    return-void
.end method
