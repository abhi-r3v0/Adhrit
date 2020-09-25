.class public final Lo/setEpicenterBounds$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEpicenterBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0008j\u0008\u0012\u0004\u0012\u00020\u0004`\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cred/pay/core/CardProvider$Companion;",
        "",
        "()V",
        "getBrand",
        "Lcom/cred/pay/core/CardProvider;",
        "brand",
        "",
        "getList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "credpaycore_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/setEpicenterBounds$extraCallback;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/setEpicenterBounds;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [Lo/setEpicenterBounds;

    .line 66
    sget-object v1, Lo/setEpicenterBounds$onNavigationEvent;->asInterface:Lo/setEpicenterBounds$onNavigationEvent;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$onMessageChannelReady;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$onPostMessage;->asBinder:Lo/setEpicenterBounds$onPostMessage;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$ICustomTabsCallback;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$ICustomTabsCallback$Stub;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$asBinder;->asInterface:Lo/setEpicenterBounds$asBinder;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$onRelationshipValidationResult;->asBinder:Lo/setEpicenterBounds$onRelationshipValidationResult;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$asInterface;->asInterface:Lo/setEpicenterBounds$asInterface;

    check-cast v1, Lo/setEpicenterBounds;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lo/setEpicenterBounds$onTransact;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$onTransact;

    check-cast v1, Lo/setEpicenterBounds;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Lo/setEpicenterBounds;
    .locals 3

    .line 70
    invoke-static {}, Lo/setEpicenterBounds$extraCallback;->onNavigationEvent()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setEpicenterBounds;

    .line 1004
    iget-object v2, v1, Lo/setEpicenterBounds;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_2

    if-nez p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1056
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_0

    return-object v1

    .line 73
    :cond_3
    sget-object p0, Lo/setEpicenterBounds$onTransact;->ICustomTabsCallback$Stub:Lo/setEpicenterBounds$onTransact;

    check-cast p0, Lo/setEpicenterBounds;

    return-object p0
.end method
