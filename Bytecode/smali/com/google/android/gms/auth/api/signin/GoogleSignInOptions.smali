.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICustomTabsCallback:Lcom/google/android/gms/common/api/Scope;

.field private static ICustomTabsService:Lcom/google/android/gms/common/api/Scope;

.field public static final extraCallback:Lcom/google/android/gms/common/api/Scope;

.field public static final onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field public static final onNavigationEvent:Lcom/google/android/gms/common/api/Scope;

.field public static final onPostMessage:Lcom/google/android/gms/common/api/Scope;

.field private static updateVisuals:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback$Stub:Z

.field ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field final asBinder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field final asInterface:Z

.field getInterfaceDescriptor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getNetInrPayableAmount;",
            ">;"
        }
    .end annotation
.end field

.field newSession:Ljava/lang/String;

.field onRelationshipValidationResult:Z

.field onTransact:Landroid/accounts/Account;

.field private final requestPostMessageChannel:I

.field warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 151
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsService:Lcom/google/android/gms/common/api/Scope;

    .line 152
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Scope;

    .line 153
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onNavigationEvent:Lcom/google/android/gms/common/api/Scope;

    .line 154
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->extraCallback:Lcom/google/android/gms/common/api/Scope;

    .line 155
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onPostMessage:Lcom/google/android/gms/common/api/Scope;

    .line 156
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;-><init>()V

    .line 22019
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onNavigationEvent:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22023
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsService:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 158
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->extraCallback:Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 22025
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22026
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 160
    new-instance v0, Lo/component13;

    invoke-direct {v0}, Lo/component13;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    new-instance v0, Lo/OrderItem$$Parcelable;

    invoke-direct {v0}, Lo/OrderItem$$Parcelable;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->updateVisuals:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lo/getNetInrPayableAmount;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->extraCallback(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/getNetInrPayableAmount;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->requestPostMessageChannel:I

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    .line 28
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    .line 29
    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    .line 30
    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    .line 31
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    .line 32
    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getInterfaceDescriptor:Ljava/util/ArrayList;

    .line 36
    iput-object p10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->warmup:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 150
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static extraCallback(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getNetInrPayableAmount;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/getNetInrPayableAmount;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getNetInrPayableAmount;

    .line 1008
    iget v2, v1, Lo/getNetInrPayableAmount;->ICustomTabsCallback:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic onNavigationEvent(Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->extraCallback(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 89
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getInterfaceDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gtz v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getInterfaceDescriptor:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_1

    goto/16 :goto_2

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 9038
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    .line 10038
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    if-nez v1, :cond_3

    .line 10040
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    if-nez v1, :cond_5

    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    .line 11040
    iget-object v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11044
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 12044
    iget-object v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    .line 13043
    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    if-ne v1, v2, :cond_5

    .line 98
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    .line 14041
    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    if-ne v1, v2, :cond_5

    .line 99
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    .line 14042
    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    if-ne v1, v2, :cond_5

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->warmup:Ljava/lang/String;

    .line 14045
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->warmup:Ljava/lang/String;

    .line 101
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_5
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/common/api/Scope;

    .line 15008
    iget-object v5, v5, Lcom/google/android/gms/common/api/Scope;->onMessageChannelReady:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 110
    new-instance v1, Lo/getItemDelegate$onNavigationEvent;

    invoke-direct {v1}, Lo/getItemDelegate$onNavigationEvent;-><init>()V

    .line 16004
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    .line 17004
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 18004
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 113
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    .line 18006
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    add-int/2addr v2, v0

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    .line 19006
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    add-int/2addr v2, v0

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 115
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    .line 20006
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    add-int/2addr v2, v0

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->warmup:Ljava/lang/String;

    .line 21004
    sget v2, Lo/getItemDelegate$onNavigationEvent;->onNavigationEvent:I

    iget v4, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    mul-int v2, v2, v4

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    iput v2, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    .line 21008
    iget v0, v1, Lo/getItemDelegate$onNavigationEvent;->ICustomTabsCallback:I

    return v0
.end method

.method public final onMessageChannelReady()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final onNavigationEvent()Lorg/json/JSONObject;
    .locals 6

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->updateVisuals:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/common/api/Scope;

    .line 22008
    iget-object v5, v5, Lcom/google/android/gms/common/api/Scope;->onMessageChannelReady:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "scopes"

    .line 127
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    if-eqz v1, :cond_1

    const-string v1, "accountName"

    .line 129
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "idTokenRequested"

    .line 130
    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "forceCodeForRefreshToken"

    .line 131
    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "serverAuthRequested"

    .line 132
    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "serverClientId"

    .line 134
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "hostedDomain"

    .line 136
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 56
    iget v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->requestPostMessageChannel:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 2039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3038
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asBinder:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x2

    .line 59
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 3040
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onTransact:Landroid/accounts/Account;

    const/4 v4, 0x3

    .line 62
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3041
    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onRelationshipValidationResult:Z

    .line 4020
    invoke-static {p1, v3, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 4021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4042
    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->asInterface:Z

    const/4 v2, 0x5

    .line 5020
    invoke-static {p1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 5021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5043
    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub:Z

    const/4 v2, 0x6

    .line 6020
    invoke-static {p1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 6021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x7

    .line 6044
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->newSession:Ljava/lang/String;

    .line 74
    invoke-static {p1, p2, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 78
    invoke-static {p1, p2, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    .line 6046
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getInterfaceDescriptor:Ljava/util/ArrayList;

    .line 81
    invoke-static {p1, p2, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0xa

    .line 7045
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->warmup:Ljava/lang/String;

    .line 84
    invoke-static {p1, p2, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 9013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
