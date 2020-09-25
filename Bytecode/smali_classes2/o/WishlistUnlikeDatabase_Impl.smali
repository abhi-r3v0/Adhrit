.class public final Lo/WishlistUnlikeDatabase_Impl;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPaymentLinkMobile;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/location/Location;

.field private final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/activateCredProtect;

.field private final extraCallback:I

.field private final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/Date;

.field private final onPostMessage:Z

.field private final onRelationshipValidationResult:I

.field private final onTransact:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILo/activateCredProtect;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lo/activateCredProtect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WishlistUnlikeDatabase_Impl;->onNavigationEvent:Ljava/util/Date;

    iput p2, p0, Lo/WishlistUnlikeDatabase_Impl;->extraCallback:I

    iput-object p3, p0, Lo/WishlistUnlikeDatabase_Impl;->onMessageChannelReady:Ljava/util/Set;

    iput-object p4, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback:Landroid/location/Location;

    iput-boolean p5, p0, Lo/WishlistUnlikeDatabase_Impl;->onPostMessage:Z

    iput p6, p0, Lo/WishlistUnlikeDatabase_Impl;->onRelationshipValidationResult:I

    iput-object p7, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iput-boolean p9, p0, Lo/WishlistUnlikeDatabase_Impl;->onTransact:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/WishlistUnlikeDatabase_Impl;->asBinder:Ljava/util/Map;

    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "custom:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x3

    const-string p4, ":"

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length p4, p2

    if-ne p4, p3, :cond_0

    const/4 p3, 0x2

    aget-object p4, p2, p3

    const-string p5, "true"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_1

    iget-object p3, p0, Lo/WishlistUnlikeDatabase_Impl;->asBinder:Ljava/util/Map;

    aget-object p2, p2, p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_1
    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    aget-object p3, p2, p3

    const-string p4, "false"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lo/WishlistUnlikeDatabase_Impl;->asBinder:Ljava/util/Map;

    aget-object p2, p2, p5

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/WishlistUnlikeDatabase_Impl;->extraCallback:I

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    iget-boolean v0, p0, Lo/WishlistUnlikeDatabase_Impl;->onPostMessage:Z

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->asBinder:Ljava/util/Map;

    return-object v0
.end method

.method public final asBinder()Z
    .locals 2

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asInterface()Z
    .locals 2

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->onMessageChannelReady:Ljava/util/Set;

    return-object v0
.end method

.method public final getInterfaceDescriptor()Z
    .locals 2

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback:Landroid/location/Location;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/WishlistUnlikeDatabase_Impl;->onRelationshipValidationResult:I

    return v0
.end method

.method public final onPostMessage()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->onNavigationEvent:Ljava/util/Date;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Lo/getPreviousBalance;
    .locals 3

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lo/getPreviousBalance$extraCallback;

    invoke-direct {v0}, Lo/getPreviousBalance$extraCallback;-><init>()V

    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget-boolean v1, v1, Lo/activateCredProtect;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Lo/getPreviousBalance$extraCallback;->onNavigationEvent(Z)Lo/getPreviousBalance$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget v1, v1, Lo/activateCredProtect;->onPostMessage:I

    invoke-virtual {v0, v1}, Lo/getPreviousBalance$extraCallback;->onNavigationEvent(I)Lo/getPreviousBalance$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget-boolean v1, v1, Lo/activateCredProtect;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback(Z)Lo/getPreviousBalance$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget v1, v1, Lo/activateCredProtect;->extraCallback:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget v1, v1, Lo/activateCredProtect;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/getPreviousBalance$extraCallback;->onMessageChannelReady(I)Lo/getPreviousBalance$extraCallback;

    :cond_1
    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget v1, v1, Lo/activateCredProtect;->extraCallback:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget-object v1, v1, Lo/activateCredProtect;->asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

    if-eqz v1, :cond_2

    new-instance v1, Lo/StatementResponse$StatementDetails;

    iget-object v2, p0, Lo/WishlistUnlikeDatabase_Impl;->asInterface:Lo/activateCredProtect;

    iget-object v2, v2, Lo/activateCredProtect;->asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

    invoke-direct {v1, v2}, Lo/StatementResponse$StatementDetails;-><init>(Lo/WinLuckyNumberResponseJsonAdapter;)V

    invoke-virtual {v0, v1}, Lo/getPreviousBalance$extraCallback;->extraCallback(Lo/StatementResponse$StatementDetails;)Lo/getPreviousBalance$extraCallback;

    :cond_2
    invoke-virtual {v0}, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback()Lo/getPreviousBalance;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Z
    .locals 1

    iget-boolean v0, p0, Lo/WishlistUnlikeDatabase_Impl;->onTransact:Z

    return v0
.end method

.method public final warmup()Z
    .locals 2

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
