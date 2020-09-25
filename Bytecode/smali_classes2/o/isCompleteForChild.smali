.class public final Lo/isCompleteForChild;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isCompleteForChild$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/isFullyInitialized;

.field public volatile asInterface:Lo/loadOrCreateBeanMapperForClass;

.field final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/isCompleteForPath;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lo/shouldIncludeField;


# direct methods
.method public constructor <init>(Lo/isCompleteForChild$ICustomTabsCallback;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    iput-object v0, p0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 42
    iget-object v0, p1, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iput-object v0, p0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 1401
    new-instance v1, Lo/shouldIncludeField;

    invoke-direct {v1, v0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 43
    iput-object v1, p0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 44
    iget-object v0, p1, Lo/isCompleteForChild$ICustomTabsCallback;->ICustomTabsCallback:Lo/isCompleteForPath;

    iput-object v0, p0, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 45
    iget-object p1, p1, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p1}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/isCompleteForChild;->extraCallback:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isCompleteForChild;->extraCallback:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
