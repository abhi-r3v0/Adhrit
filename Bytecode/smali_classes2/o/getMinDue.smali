.class public final Lo/getMinDue;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMinDue$onMessageChannelReady;,
        Lo/getMinDue$onNavigationEvent;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/Integer;

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setCustomAmount<",
            "*>;",
            "Lo/getMinDue$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:I

.field public final extraCallback:Landroid/accounts/Account;

.field public final onMessageChannelReady:Lo/LocalTestingException;

.field public final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Landroid/view/View;

.field private final onTransact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final warmup:Z


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lo/LocalTestingException;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/util/Map<",
            "Lo/setCustomAmount<",
            "*>;",
            "Lo/getMinDue$onNavigationEvent;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/LocalTestingException;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lo/getMinDue;->extraCallback:Landroid/accounts/Account;

    if-nez p2, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/getMinDue;->onPostMessage:Ljava/util/Set;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/getMinDue;->asBinder:Ljava/util/Map;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lo/getMinDue;->onRelationshipValidationResult:Landroid/view/View;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lo/getMinDue;->asInterface:I

    .line 12
    iput-object p6, p0, Lo/getMinDue;->onNavigationEvent:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lo/getMinDue;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lo/getMinDue;->onMessageChannelReady:Lo/LocalTestingException;

    .line 15
    iput-boolean p1, p0, Lo/getMinDue;->warmup:Z

    .line 16
    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lo/getMinDue;->onPostMessage:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object p2, p0, Lo/getMinDue;->asBinder:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/getMinDue$onNavigationEvent;

    .line 18
    iget-object p3, p3, Lo/getMinDue$onNavigationEvent;->onPostMessage:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/getMinDue;->onTransact:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/getMinDue;->onTransact:Ljava/util/Set;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/getMinDue;->ICustomTabsCallback:Ljava/lang/Integer;

    return-void
.end method

.method public final asBinder()Lo/LocalTestingException;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/getMinDue;->onMessageChannelReady:Lo/LocalTestingException;

    return-object v0
.end method

.method public final extraCallback()Landroid/accounts/Account;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/getMinDue;->extraCallback:Landroid/accounts/Account;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/getMinDue;->onPostMessage:Ljava/util/Set;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    iget-object v0, p0, Lo/getMinDue;->extraCallback:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/setCustomAmount;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCustomAmount<",
            "*>;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/getMinDue;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMinDue$onNavigationEvent;

    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p1, Lo/getMinDue$onNavigationEvent;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/getMinDue;->onPostMessage:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object p1, p1, Lo/getMinDue$onNavigationEvent;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/getMinDue;->onPostMessage:Ljava/util/Set;

    return-object p1
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/getMinDue;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method
