.class public final Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/accounts/Account;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private asBinder:Ljava/lang/String;

.field public extraCallback:Z

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Z

.field private onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/getNetInrPayableAmount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onTransact:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onTransact:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 1140
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    .line 1141
    iget-boolean v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onMessageChannelReady:Z

    .line 1142
    iget-boolean v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->extraCallback:Z

    .line 1143
    iget-boolean v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onRelationshipValidationResult:Z

    .line 1144
    iget-object v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 1145
    iget-object v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback:Landroid/accounts/Account;

    .line 1146
    iget-object v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->asBinder:Ljava/lang/String;

    .line 1147
    iget-object v0, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getInterfaceDescriptor:Ljava/util/ArrayList;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onNavigationEvent(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onTransact:Ljava/util/Map;

    .line 1149
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->warmup:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p1

    .line 3035
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "two different server client ids provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3005
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs extraCallback(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final onNavigationEvent()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 12

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onPostMessage:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->extraCallback:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->extraCallback:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2019
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onNavigationEvent:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback:Landroid/accounts/Account;

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onRelationshipValidationResult:Z

    iget-boolean v6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onMessageChannelReady:Z

    iget-boolean v7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->extraCallback:Z

    iget-object v8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->asBinder:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onTransact:Ljava/util/Map;

    iget-object v11, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(Ljava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object p0
.end method
